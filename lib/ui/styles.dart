import 'package:salmonia_android/ui/all.dart';

class SalmoniaColors {
  static const Color successColor = Color(0xffadff2f);
  static const Color failColor = Color(0xffffa500);
  static const Color goldEgg = Color(0xfff1c40f);
  static const Color powerEgg = Color(0xffe67e22);
}

const TextStyle failTextStyle = TextStyle(color: SalmoniaColors.failColor);
const TextStyle successTextStyle = TextStyle(color: SalmoniaColors.successColor);

TextStyle boldTextStyle(BuildContext context) {
  final TextStyle style = Theme.of(context).textTheme.bodyText2;
  return style.copyWith(
    fontWeight: FontWeight.bold,
  );
}

TextStyle linkTextStyle(BuildContext context) {
  return const TextStyle(
    color: Colors.lightBlueAccent,
  );
}

TextStyle errorTextStyle(BuildContext context) {
  return TextStyle(
    color: Theme.of(context).errorColor,
  );
}

TextStyle weakTextStyle(BuildContext context) {
  final TextStyle style = Theme.of(context).textTheme.bodyText2;
  return style.copyWith(
    color: style.color.withAlpha(0xAA),
    fontSize: style.fontSize * 0.9,
  );
}

class ErrorText extends StatelessWidget {
  const ErrorText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: errorTextStyle(context),
    );
  }
}
