import '../../../core/app_export.dart';

/// This class is used in the [favorites_item_widget] screen.
class FavoritesItemModel {
  FavoritesItemModel({
    this.tracks,
    this.addToPlaylist,
    this.id,
  }) {
    tracks = tracks ?? Rx(ImageConstant.imgIconsOnprimarycontainer24x24);
    addToPlaylist = addToPlaylist ?? Rx("Tracks");
    id = id ?? Rx("");
  }

  Rx<String>? tracks;

  Rx<String>? addToPlaylist;

  Rx<String>? id;
}
