import '../../../core/app_export.dart';
import 'songslist_item_model.dart';

/// This class defines the variables used in the [album_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumDetailsModel {
  Rx<List<SongslistItemModel>> songslistItemList = Rx([
    SongslistItemModel(
        count: "1".obs,
        burning: "Burning".obs,
        podvalCaplella: "Podval Caplella".obs),
    SongslistItemModel(burning: "Flashbacks".obs, podvalCaplella: "Emika".obs),
    SongslistItemModel(
        burning: "Renaissance".obs, podvalCaplella: "Podval Caplella".obs),
    SongslistItemModel(
        burning: "Ivar’s Revenge".obs, podvalCaplella: "Danheim".obs)
  ]);
}
