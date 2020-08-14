import 'package:cookie_jar/cookie_jar.dart';
import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:salmon_stats_app/config.dart';
import 'package:salmon_stats_app/generated/l10n.dart';
import 'package:salmon_stats_app/main.reflectable.dart' show initializeReflectable;
import 'package:salmon_stats_app/model/all.dart';
import 'package:salmon_stats_app/store/database/all.dart';
import 'package:salmon_stats_app/store/global.dart';
import 'package:salmon_stats_app/store/shared_prefs.dart';
import 'package:salmon_stats_app/ui/all.dart';
import 'package:salmon_stats_app/util/all.dart';

Future<void> main() async {
  CookieJar cookieJar;

  WidgetsFlutterBinding.ensureInitialized();

  initializeReflectable();
  JsonMapper().useAdapter(
    JsonMapperAdapter(
      valueDecorators: <Type, ValueDecoratorFunction>{
        typeOf<List<IdEntity>>(): (dynamic value) => value.cast<IdEntity>(),
        typeOf<List<NicknameAndIcon>>(): (dynamic value) => value.cast<NicknameAndIcon>(),
        typeOf<List<ResultDetails>>(): (dynamic value) => value.cast<ResultDetails>(),
        typeOf<List<UploadResult>>(): (dynamic value) => value.cast<UploadResult>(),
        typeOf<Map<String, CountEntity>>(): (dynamic value) => value.cast<String, CountEntity>(),
      },
    ),
  );

  await AppSharedPrefs.load();
  await DatabaseProvider.instance.db(); // Ensure Database is initialized

  final List<UserProfile> profiles = await UserProfileRepository(DatabaseProvider.instance).all();
  final UserProfile profile = profiles.firstWhere((UserProfile p) => p.isActiveBool, orElse: () => null);

  final String iksmSession = profile?.iksmSession;
  if (iksmSession != null) {
    cookieJar = createCookieJar(iksmSession);
  }

  Config.env = await loadEnv('.env');

  final Future<PackageInfo> packageInfoFuture = PackageInfo.fromPlatform()
    ..then((PackageInfo packageInfo) {
      final AppSharedPrefs prefs = AppSharedPrefs();

      if (prefs.oldVersion != packageInfo.version) {
        if (prefs.oldVersion != null) {
          // Do not place updates indicator on first launch.
          prefs.hasUnreadReleaseNotes = true;
        }

        prefs.oldVersion = packageInfo.version;
      }
    });
  final GlobalStore globalStore = GlobalStore(
    cookieJar: cookieJar,
    iksmStatusFuture: validateIksmSession(cookieJar),
    packageInfoFuture: packageInfoFuture,
    profiles: profiles,
  );

  _createGlobalKeys(globalStore, isFirstTime: true);

  runApp(
    MultiProvider(
      // ignore: always_specify_types
      providers: [
        ChangeNotifierProvider<GlobalStore>(
          create: (_) => globalStore,
        ),
        ChangeNotifierProvider<AppSharedPrefs>(
          create: (_) => AppSharedPrefs(),
        ),
      ],
      child: Restartable(
        key: globalStore.getGlobalKey<RestartableState>(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalStore store = Provider.of<GlobalStore>(context, listen: false);

    return MaterialApp(
      debugShowCheckedModeBanner: store.isInDebugMode && !Config.HIDE_DEBUG_LABEL,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      locale: Config.DEV_LOCALE,
      supportedLocales: S.delegate.supportedLocales,
      title: 'Salmon Stats',
      theme: _makeThemeData(brightness: Brightness.dark),
//      darkTheme: _makeThemeData(brightness: Brightness.dark),
      home: HomePage(key: store.getGlobalKey<HomePageState>()),
    );
  }

  ThemeData _makeThemeData({@required Brightness brightness}) {
    return ThemeData(
      brightness: brightness,
      primarySwatch: Colors.orange,
      errorColor: Colors.red[400],
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.deepOrange,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: const TextTheme(
        subtitle1: TextStyle(fontSize: 14.0),
      ),
    );
  }
}

class Restartable extends StatefulWidget {
  const Restartable({Key key, @required this.child}) : super(key: key);

  final Widget child;

  @override
  RestartableState createState() => RestartableState();
}

class RestartableState extends State<Restartable> {
  UniqueKey _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _key,
      child: widget.child,
    );
  }

  void restart() {
    setState(() {
      _createGlobalKeys(context.read<GlobalStore>());
      _key = UniqueKey();
    });
  }
}

void _createGlobalKeys(GlobalStore globalStore, {bool isFirstTime = false}) {
  if (isFirstTime) {
    globalStore.createGlobalKey<RestartableState>();
  }

  globalStore.createGlobalKey<HomePageState>();
  globalStore.createGlobalKey<SalmonStatsPageState>();
}
