import '../../../core/app_export.dart';

/// This class is used in the [playlist_item_widget] screen.
class PlaylistItemModel {
  PlaylistItemModel({
    this.flashbacks,
    this.renaissance,
    this.podvalCaplella,
    this.id,
  }) {
    flashbacks = flashbacks ?? Rx(ImageConstant.imgPhoto8);
    renaissance = renaissance ?? Rx("Flashbacks");
    podvalCaplella = podvalCaplella ?? Rx("Emika");
    id = id ?? Rx("");
  }

  Rx<String>? flashbacks;

  Rx<String>? renaissance;

  Rx<String>? podvalCaplella;

  Rx<String>? id;
}
