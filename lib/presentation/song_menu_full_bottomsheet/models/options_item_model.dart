import '../../../core/app_export.dart';

/// This class is used in the [options_item_widget] screen.
class OptionsItemModel {
  OptionsItemModel({
    this.addtoPlaylist,
    this.addToPlaylist,
    this.id,
  }) {
    addtoPlaylist = addtoPlaylist ?? Rx(ImageConstant.imgClose);
    addToPlaylist = addToPlaylist ?? Rx("Add to Playlist");
    id = id ?? Rx("");
  }

  Rx<String>? addtoPlaylist;

  Rx<String>? addToPlaylist;

  Rx<String>? id;
}
