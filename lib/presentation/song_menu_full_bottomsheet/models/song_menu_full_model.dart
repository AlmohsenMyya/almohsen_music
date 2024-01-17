import '../../../core/app_export.dart';
import 'options_item_model.dart';

/// This class defines the variables used in the [song_menu_full_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SongMenuFullModel {
  Rx<List<OptionsItemModel>> optionsItemList = Rx([
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgClose.obs,
        addToPlaylist: "Add to Playlist".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgLock.obs, addToPlaylist: "Artist".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgIcons.obs, addToPlaylist: "Album".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgTelevision.obs,
        addToPlaylist: "I don’t like it".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgIconsOnprimarycontainer.obs,
        addToPlaylist: "Song lyrics".obs),
    OptionsItemModel(
        addtoPlaylist: ImageConstant.imgDownload.obs,
        addToPlaylist: "Download".obs)
  ]);
}
