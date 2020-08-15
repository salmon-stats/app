import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:salmon_stats_app/model/all.dart';
import 'package:salmon_stats_app/util/all.dart';

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
class KeyEntity {
  String key;
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
  int kumaPoint;
  int gradePoint;
  int gradePointDelta;
  int jobId;
  int jobRate;
  JobResult jobResult;
  int jobScore;
  int playTime;
  int startTime;
  int endTime;
  ResultDetails myResult;
  List<ResultDetails> otherResults;
  List<WaveDetails> waveDetails;
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

@jsonSerializable
class WaveDetails {
  @JsonProperty(ignore: true)
  SalmonEvent get event => SalmonEvent.values.firstWhere((SalmonEvent event) => event.toString() == 'SalmonEvent.${toCamelCase(eventType.key)}');

  @JsonProperty(ignore: true)
  SalmonWaterLevel get water => SalmonWaterLevel.values.firstWhere((SalmonWaterLevel water) => water.toString() == 'SalmonWaterLevel.${waterLevel.key}');

  KeyEntity eventType;
  int goldenIkuraNum;
  int goldenIkuraPopNum;
  int ikuraNum;
  int quotaNum;
  KeyEntity waterLevel;
}
