import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class NicknameAndIconsResponse {
  List<NicknameAndIcon> nicknameAndIcons;
}

@jsonSerializable
class NicknameAndIcon {
  String nickname;
  String nsaId;
  String thumbnailUrl;
}

@jsonSerializable
class IdEntity {
  @JsonProperty(ignore: true)
  int get id => int.parse(idStr);

  @JsonProperty(name: 'id')
  String idStr;
}

@jsonSerializable
class CountEntity {
  const CountEntity(this.count);

  final int count;
}

@jsonSerializable
class JobResult {
  String failureReason; // 'time_limit' | 'wipe_out'
  int failureWave;
  bool isClear;
}

@jsonSerializable
class SalmonResults {
  // summary;
  // rewardGear;

  List<SalmonResult> results = <SalmonResult>[];
}

@jsonSerializable
class SalmonResult {
  @JsonProperty(ignore: true)
  DateTime get playDate => DateTime.fromMillisecondsSinceEpoch((playTime ?? 0) * 1000);

  Map<String, CountEntity> bossCounts;
  num dangerRate; // either int or double
  IdEntity grade;
  int gradePoint;
  int jobId;
  int jobRate;
  JobResult jobResult;
  int playTime;
  ResultDetails myResult;
  List<ResultDetails> otherResults;
}

@jsonSerializable
class ResultDetails {
  Map<String, CountEntity> bossKillCounts;
  int deadCount;
  int goldenIkuraNum;
  int ikuraNum;
  String name;
  int helpCount;
  String pid;
  // player_type: { style: 'girl' | 'boy'; species: 'inklings' | 'octolings'; };
  IdEntity special;
  List<int> specialCounts;
  List<IdEntity> weaponList;
}
