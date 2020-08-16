// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(name) => "Are you sure you want to remove account \"${name}\"?";

  static m1(pageName) => "Open ${pageName}";

  static m2(url) => "${url} #SalmonStats #SalmonStatsAndroid";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutThisApp" : MessageLookupByLibrary.simpleMessage("About this app"),
    "addAccount" : MessageLookupByLibrary.simpleMessage("Add account"),
    "bossDrizzler" : MessageLookupByLibrary.simpleMessage("Drizzler"),
    "bossFlyfish" : MessageLookupByLibrary.simpleMessage("Flyfish"),
    "bossGoldie" : MessageLookupByLibrary.simpleMessage("Goldie"),
    "bossGriller" : MessageLookupByLibrary.simpleMessage("Griller"),
    "bossMaws" : MessageLookupByLibrary.simpleMessage("Maws"),
    "bossScrapper" : MessageLookupByLibrary.simpleMessage("Scrapper"),
    "bossSteelEel" : MessageLookupByLibrary.simpleMessage("Steel Eel"),
    "bossSteelhead" : MessageLookupByLibrary.simpleMessage("Steelhead"),
    "bossStinger" : MessageLookupByLibrary.simpleMessage("Stinger"),
    "cancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "clear" : MessageLookupByLibrary.simpleMessage("Clear"),
    "confirmCancelUploading" : MessageLookupByLibrary.simpleMessage("Are you sure you want to stop uploading?"),
    "confirmCancelUploadingYes" : MessageLookupByLibrary.simpleMessage("Yes, stop uploading"),
    "confirmRemoveAccount" : m0,
    "continueButtonText" : MessageLookupByLibrary.simpleMessage("Continue"),
    "enterApiTokenManually" : MessageLookupByLibrary.simpleMessage("Enter API Token manually"),
    "errorDialogTitle" : MessageLookupByLibrary.simpleMessage("Error"),
    "eventCohockCharge" : MessageLookupByLibrary.simpleMessage("Cohock Charge"),
    "eventFog" : MessageLookupByLibrary.simpleMessage("Fog"),
    "eventGoldieSeeking" : MessageLookupByLibrary.simpleMessage("Goldie Seeking"),
    "eventGriller" : MessageLookupByLibrary.simpleMessage("The Griller"),
    "eventMothership" : MessageLookupByLibrary.simpleMessage("The Mothership"),
    "eventRush" : MessageLookupByLibrary.simpleMessage("Rush"),
    "eventWaterLevels" : MessageLookupByLibrary.simpleMessage("-"),
    "fail" : MessageLookupByLibrary.simpleMessage("Fail"),
    "getApiToken" : MessageLookupByLibrary.simpleMessage("Get API Token"),
    "goBack" : MessageLookupByLibrary.simpleMessage("Go back"),
    "iksmExpirationMessage" : MessageLookupByLibrary.simpleMessage("iksm_session has expired."),
    "iksmExpirationUpdateButtonLabel" : MessageLookupByLibrary.simpleMessage("Update iksm_session."),
    "iksmSession" : MessageLookupByLibrary.simpleMessage("iksm_session"),
    "iksmSessionAlreadyUsed" : MessageLookupByLibrary.simpleMessage("You already have added this iksm_session."),
    "iksmSessionPromptText" : MessageLookupByLibrary.simpleMessage("Enter your iksm_session"),
    "invalidIksmSession" : MessageLookupByLibrary.simpleMessage("Invalid iksm_session. Please make sure you enter correct iksm_session and try again."),
    "navResults" : MessageLookupByLibrary.simpleMessage("Results"),
    "noResultsFound" : MessageLookupByLibrary.simpleMessage("No results were found. Please play some Salmon Run and refresh the page."),
    "ok" : MessageLookupByLibrary.simpleMessage("OK"),
    "openOtherPage" : m1,
    "refresh" : MessageLookupByLibrary.simpleMessage("Refresh"),
    "releaseNotes" : MessageLookupByLibrary.simpleMessage("Release notes"),
    "resultPageUnderConstruction" : MessageLookupByLibrary.simpleMessage("Result page is under construction. For the time being, please upload result to Salmon Stats and visit Salmon Stats."),
    "resultsFetchingError" : MessageLookupByLibrary.simpleMessage("Failed to fetch results from Splatnet."),
    "salmonStats" : MessageLookupByLibrary.simpleMessage("Salmon Stats"),
    "salmonStatsApiToken" : MessageLookupByLibrary.simpleMessage("Salmon Stats API Token"),
    "salmonStatsApiTokenNotSet" : MessageLookupByLibrary.simpleMessage("Salmon Stats API Token is not set."),
    "salmonStatsProfile" : MessageLookupByLibrary.simpleMessage("profile"),
    "salmonStatsSharingText" : m2,
    "settings" : MessageLookupByLibrary.simpleMessage("Settings"),
    "startUploadingButtonText" : MessageLookupByLibrary.simpleMessage("Start Uploading"),
    "updateApiToken" : MessageLookupByLibrary.simpleMessage("Update API Token"),
    "uploadCanceledButtonText" : MessageLookupByLibrary.simpleMessage("Successfully stopped "),
    "uploadCancellingButtonText" : MessageLookupByLibrary.simpleMessage("Stopping upload..."),
    "uploadCompletedButtonText" : MessageLookupByLibrary.simpleMessage("Upload completed."),
    "waterLevelHigh" : MessageLookupByLibrary.simpleMessage("High tide"),
    "waterLevelLow" : MessageLookupByLibrary.simpleMessage("Low tide"),
    "waterLevelNormal" : MessageLookupByLibrary.simpleMessage("Normal tide"),
    "yes" : MessageLookupByLibrary.simpleMessage("Yes")
  };
}
