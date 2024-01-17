import '../../../core/app_export.dart';
import 'playlist_item_model.dart';

/// This class defines the variables used in the [playlist_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistModel {
  Rx<List<PlaylistItemModel>> playlistItemList = Rx([
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto8.obs,
        renaissance: "Flashbacks".obs,
        podvalCaplella: "Emika".obs),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto81.obs,
        renaissance: "Ivar’s Revenge".obs,
        podvalCaplella: "Danheim".obs),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto82.obs,
        renaissance: "Urgent Siege".obs,
        podvalCaplella: "Damned Anthem".obs),
    PlaylistItemModel(flashbacks: ImageConstant.imgPhoto83.obs),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto85.obs,
        renaissance: "Entangled".obs,
        podvalCaplella: "Lorn".obs),
    PlaylistItemModel(
        flashbacks: ImageConstant.imgPhoto86.obs,
        renaissance: "The Cycle Continues".obs,
        podvalCaplella: "Mac Quayle".obs)
  ]);
}
