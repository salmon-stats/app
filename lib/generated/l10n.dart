// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Go back`
  String get goBack {
    return Intl.message(
      'Go back',
      name: 'goBack',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `About this app`
  String get aboutThisApp {
    return Intl.message(
      'About this app',
      name: 'aboutThisApp',
      desc: '',
      args: [],
    );
  }

  /// `Add account`
  String get addAccount {
    return Intl.message(
      'Add account',
      name: 'addAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to stop uploading?`
  String get confirmCancelUploading {
    return Intl.message(
      'Are you sure you want to stop uploading?',
      name: 'confirmCancelUploading',
      desc: '',
      args: [],
    );
  }

  /// `Yes, stop uploading`
  String get confirmCancelUploadingYes {
    return Intl.message(
      'Yes, stop uploading',
      name: 'confirmCancelUploadingYes',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove account "{name}"?`
  String confirmRemoveAccount(Object name) {
    return Intl.message(
      'Are you sure you want to remove account "$name"?',
      name: 'confirmRemoveAccount',
      desc: '',
      args: [name],
    );
  }

  /// `Continue`
  String get continueButtonText {
    return Intl.message(
      'Continue',
      name: 'continueButtonText',
      desc: '',
      args: [],
    );
  }

  /// `iksm_session has expired.`
  String get iksmExpirationMessage {
    return Intl.message(
      'iksm_session has expired.',
      name: 'iksmExpirationMessage',
      desc: '',
      args: [],
    );
  }

  /// `Update iksm_session.`
  String get iksmExpirationUpdateButtonLabel {
    return Intl.message(
      'Update iksm_session.',
      name: 'iksmExpirationUpdateButtonLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your iksm_session`
  String get iksmSessionPromptText {
    return Intl.message(
      'Enter your iksm_session',
      name: 'iksmSessionPromptText',
      desc: '',
      args: [],
    );
  }

  /// `Open {pageName}`
  String openOtherPage(Object pageName) {
    return Intl.message(
      'Open $pageName',
      name: 'openOtherPage',
      desc: '',
      args: [pageName],
    );
  }

  /// `No results were found. Please play some Salmon Run and refresh the page.`
  String get noResultsFound {
    return Intl.message(
      'No results were found. Please play some Salmon Run and refresh the page.',
      name: 'noResultsFound',
      desc: '',
      args: [],
    );
  }

  /// `Release notes`
  String get releaseNotes {
    return Intl.message(
      'Release notes',
      name: 'releaseNotes',
      desc: '',
      args: [],
    );
  }

  /// `Salmon Stats API Token is not set.`
  String get salmonStatsApiTokenNotSet {
    return Intl.message(
      'Salmon Stats API Token is not set.',
      name: 'salmonStatsApiTokenNotSet',
      desc: '',
      args: [],
    );
  }

  /// `profile`
  String get salmonStatsProfile {
    return Intl.message(
      'profile',
      name: 'salmonStatsProfile',
      desc: '',
      args: [],
    );
  }

  /// `Start Uploading`
  String get startUploadingButtonText {
    return Intl.message(
      'Start Uploading',
      name: 'startUploadingButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Stopping upload...`
  String get uploadCancellingButtonText {
    return Intl.message(
      'Stopping upload...',
      name: 'uploadCancellingButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Successfully stopped `
  String get uploadCanceledButtonText {
    return Intl.message(
      'Successfully stopped ',
      name: 'uploadCanceledButtonText',
      desc: '',
      args: [],
    );
  }

  /// `Upload completed.`
  String get uploadCompletedButtonText {
    return Intl.message(
      'Upload completed.',
      name: 'uploadCompletedButtonText',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '\$comment' key

  /// `Goldie`
  String get bossGoldie {
    return Intl.message(
      'Goldie',
      name: 'bossGoldie',
      desc: '',
      args: [],
    );
  }

  /// `Steelhead`
  String get bossSteelhead {
    return Intl.message(
      'Steelhead',
      name: 'bossSteelhead',
      desc: '',
      args: [],
    );
  }

  /// `Flyfish`
  String get bossFlyfish {
    return Intl.message(
      'Flyfish',
      name: 'bossFlyfish',
      desc: '',
      args: [],
    );
  }

  /// `Scrapper`
  String get bossScrapper {
    return Intl.message(
      'Scrapper',
      name: 'bossScrapper',
      desc: '',
      args: [],
    );
  }

  /// `Steel Eel`
  String get bossSteelEel {
    return Intl.message(
      'Steel Eel',
      name: 'bossSteelEel',
      desc: '',
      args: [],
    );
  }

  /// `Stinger`
  String get bossStinger {
    return Intl.message(
      'Stinger',
      name: 'bossStinger',
      desc: '',
      args: [],
    );
  }

  /// `Maws`
  String get bossMaws {
    return Intl.message(
      'Maws',
      name: 'bossMaws',
      desc: '',
      args: [],
    );
  }

  /// `Griller`
  String get bossGriller {
    return Intl.message(
      'Griller',
      name: 'bossGriller',
      desc: '',
      args: [],
    );
  }

  /// `Drizzler`
  String get bossDrizzler {
    return Intl.message(
      'Drizzler',
      name: 'bossDrizzler',
      desc: '',
      args: [],
    );
  }

  /// `Enter API Token manually`
  String get enterApiTokenManually {
    return Intl.message(
      'Enter API Token manually',
      name: 'enterApiTokenManually',
      desc: '',
      args: [],
    );
  }

  /// `Get API Token`
  String get getApiToken {
    return Intl.message(
      'Get API Token',
      name: 'getApiToken',
      desc: '',
      args: [],
    );
  }

  /// `Update API Token`
  String get updateApiToken {
    return Intl.message(
      'Update API Token',
      name: 'updateApiToken',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get errorDialogTitle {
    return Intl.message(
      'Error',
      name: 'errorDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `You already have added this iksm_session.`
  String get iksmSessionAlreadyUsed {
    return Intl.message(
      'You already have added this iksm_session.',
      name: 'iksmSessionAlreadyUsed',
      desc: '',
      args: [],
    );
  }

  /// `Invalid iksm_session. Please make sure you enter correct iksm_session and try again.`
  String get invalidIksmSession {
    return Intl.message(
      'Invalid iksm_session. Please make sure you enter correct iksm_session and try again.',
      name: 'invalidIksmSession',
      desc: '',
      args: [],
    );
  }

  /// `Failed to fetch results from Splatnet.`
  String get resultsFetchingError {
    return Intl.message(
      'Failed to fetch results from Splatnet.',
      name: 'resultsFetchingError',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Result page is under construction. For the time being, please upload result to Salmon Stats and visit Salmon Stats.`
  String get resultPageUnderConstruction {
    return Intl.message(
      'Result page is under construction. For the time being, please upload result to Salmon Stats and visit Salmon Stats.',
      name: 'resultPageUnderConstruction',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Fail`
  String get fail {
    return Intl.message(
      'Fail',
      name: 'fail',
      desc: '',
      args: [],
    );
  }

  /// `iksm_session`
  String get iksmSession {
    return Intl.message(
      'iksm_session',
      name: 'iksmSession',
      desc: '',
      args: [],
    );
  }

  /// `Results`
  String get navResults {
    return Intl.message(
      'Results',
      name: 'navResults',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Salmon Stats`
  String get salmonStats {
    return Intl.message(
      'Salmon Stats',
      name: 'salmonStats',
      desc: '',
      args: [],
    );
  }

  /// `Salmon Stats API Token`
  String get salmonStatsApiToken {
    return Intl.message(
      'Salmon Stats API Token',
      name: 'salmonStatsApiToken',
      desc: '',
      args: [],
    );
  }

  /// `{url} #SalmonStats #SalmonStatsAndroid`
  String salmonStatsSharingText(Object url) {
    return Intl.message(
      '$url #SalmonStats #SalmonStatsAndroid',
      name: 'salmonStatsSharingText',
      desc: '',
      args: [url],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ja'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}