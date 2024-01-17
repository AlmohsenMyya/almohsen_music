import '../../../core/app_export.dart';
import 'favorites_item_model.dart';

/// This class defines the variables used in the [favorites_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FavoritesModel {
  Rx<List<FavoritesItemModel>> favoritesItemList = Rx([
    FavoritesItemModel(
        tracks: ImageConstant.imgIconsOnprimarycontainer24x24.obs,
        addToPlaylist: "Tracks".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgLock.obs, addToPlaylist: "Artist".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgIcons.obs, addToPlaylist: "Album".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgIconsOnprimarycontainer.obs,
        addToPlaylist: "Playlists".obs),
    FavoritesItemModel(
        tracks: ImageConstant.imgDownload.obs, addToPlaylist: "Download".obs)
  ]);
}
