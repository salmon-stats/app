// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ja locale. All the
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
  String get localeName => 'ja';

  static m0(pageName) => "${pageName}を開く";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutThisApp" : MessageLookupByLibrary.simpleMessage("このアプリについて"),
    "addAccount" : MessageLookupByLibrary.simpleMessage("アカウントを追加する"),
    "cancel" : MessageLookupByLibrary.simpleMessage("キャンセル"),
    "confirmCancelUploading" : MessageLookupByLibrary.simpleMessage("本当にアップロードを中断してもよろしいですか?"),
    "confirmCancelUploadingYes" : MessageLookupByLibrary.simpleMessage("中断する"),
    "continueButtonText" : MessageLookupByLibrary.simpleMessage("続ける"),
    "enterApiTokenManually" : MessageLookupByLibrary.simpleMessage("手動でAPI Tokenを入力する"),
    "errorDialogTitle" : MessageLookupByLibrary.simpleMessage("エラー"),
    "getApiToken" : MessageLookupByLibrary.simpleMessage("API Tokenを取得"),
    "goBack" : MessageLookupByLibrary.simpleMessage("戻る"),
    "iksmSessionAlreadyUsed" : MessageLookupByLibrary.simpleMessage("この iksm_session はすでに追加されています。"),
    "iksmSessionPromptText" : MessageLookupByLibrary.simpleMessage("iksm_session を入力してください"),
    "invalidIksmSession" : MessageLookupByLibrary.simpleMessage("iksm_session が正しくありません。入力内容を確認の上、もう一度やり直してください。"),
    "noResultsFound" : MessageLookupByLibrary.simpleMessage("リザルトが見つかりませんでした。サーモンランをプレイして、ページを更新してください。"),
    "openOtherPage" : m0,
    "refresh" : MessageLookupByLibrary.simpleMessage("更新"),
    "resultPageUnderConstruction" : MessageLookupByLibrary.simpleMessage("リザルトページは現在開発中です。リザルトを確認するには、Salmon Statsにアップロードしてご確認ください。"),
    "resultsFetchingError" : MessageLookupByLibrary.simpleMessage("Splatnetからリザルトを取得できませんでした。"),
    "salmonStatsApiTokenNotSet" : MessageLookupByLibrary.simpleMessage("Salmon StatsのAPI Tokenが設定されていません。"),
    "salmonStatsProfile" : MessageLookupByLibrary.simpleMessage("プロフィール"),
    "settings" : MessageLookupByLibrary.simpleMessage("設定"),
    "startUploadingButtonText" : MessageLookupByLibrary.simpleMessage("アップロードを開始"),
    "updateApiToken" : MessageLookupByLibrary.simpleMessage("API Tokenを更新"),
    "uploadCanceledButtonText" : MessageLookupByLibrary.simpleMessage("アップロードを中断しました"),
    "uploadCancellingButtonText" : MessageLookupByLibrary.simpleMessage("アップロードを停止中..."),
    "uploadCompletedButtonText" : MessageLookupByLibrary.simpleMessage("アップロード完了"),
    "yes" : MessageLookupByLibrary.simpleMessage("はい")
  };
}
