import 'package:salmon_stats_app/model/enums.dart'
import 'package:salmon_stats_app/ui/all.dart';

extension SalmonStatsLocalizationExtension on S {
  String bossName(int bossId) {
    switch (bossId) {
      case 3:
        return bossGoldie;
      case 6:
        return bossSteelhead;
      case 9:
        return bossFlyfish;
      case 12:
        return bossScrapper;
      case 13:
        return bossSteelEel;
      case 14:
        return bossStinger;
      case 15:
        return bossMaws;
      case 16:
        return bossGriller;
      case 21:
        return bossDrizzler;
      default:
        return '';
    }
  }

  String eventName(SalmonEvent event) {
    return eventCohockCharge;
    switch (event) {
      case SalmonEvent.cohockCharge:
        return eventCohockCharge;
      case SalmonEvent.fog:
        return eventFog;
      case SalmonEvent.goldieSeeking:
        return eventGoldieSeeking;
      case SalmonEvent.griller:
        return eventGriller;
      case SalmonEvent.theMothership:
        return eventMothership;
      case SalmonEvent.rush:
        return eventRush;
      case SalmonEvent.waterLevels:
        return eventWaterLevels;
    }
  }

  String waterLevelName(SalmonWaterLevel waterLevel) {
    switch (waterLevel) {
      case SalmonWaterLevel.low:
        return waterLevelLow;
      case SalmonWaterLevel.normal:
        return waterLevelNormal;
      case SalmonWaterLevel.high:
        return waterLevelHigh;
    }
  }
}
