import '../../../core/app_export.dart';

/// This class is used in the [topplaylist_item_widget] screen.
class TopplaylistItemModel {
  TopplaylistItemModel({
    this.renaissance,
    this.renaissance1,
    this.tracksCounter,
    this.duration,
    this.id,
  }) {
    renaissance = renaissance ?? Rx(ImageConstant.imgPlaylistBackground);
    renaissance1 = renaissance1 ?? Rx("Renaissance");
    tracksCounter = tracksCounter ?? Rx("843 tracks");
    duration = duration ?? Rx("23 hours");
    id = id ?? Rx("");
  }

  Rx<String>? renaissance;

  Rx<String>? renaissance1;

  Rx<String>? tracksCounter;

  Rx<String>? duration;

  Rx<String>? id;
}
