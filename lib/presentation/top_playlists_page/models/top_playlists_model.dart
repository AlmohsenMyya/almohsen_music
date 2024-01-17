import '../../../core/app_export.dart';
import 'topplaylist_item_model.dart';

/// This class defines the variables used in the [top_playlists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TopPlaylistsModel {
  Rx<List<TopplaylistItemModel>> topplaylistItemList = Rx([
    TopplaylistItemModel(
        renaissance: ImageConstant.imgPlaylistBackground.obs,
        renaissance1: "Renaissance".obs,
        tracksCounter: "843 tracks".obs,
        duration: "23 hours".obs),
    TopplaylistItemModel(
        renaissance: ImageConstant.imgPlaylistBackground181x342.obs,
        renaissance1: "Radiance".obs,
        tracksCounter: "843 tracks".obs,
        duration: "23 hours".obs),
    TopplaylistItemModel(
        renaissance: ImageConstant.imgPlaylistBackground1.obs,
        renaissance1: "Urgent Siege".obs,
        tracksCounter: "843 tracks".obs,
        duration: "23 hours".obs)
  ]);
}
