import '../types/launchpad_status.dart';

class Mapper {
  static String statusInString(LaunchPadStatus launchPadStatus) =>
      launchPadStatus.map(
        active: (e) => 'active',
        underConstruction: (e) => 'under construction',
        retired: (e) => 'retired',
        unknown: (e) => 'unknown',
      );

  static LaunchPadStatus statusInType(String value) {
    switch (value) {
      case 'active':
        return LaunchPadStatus.active();
      case 'retired':
        return LaunchPadStatus.retired();
      case 'under construction':
        return LaunchPadStatus.underConstruction();
      default:
        return LaunchPadStatus.unknown();
    }
  }
}
