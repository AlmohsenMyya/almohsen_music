import '../../../core/app_export.dart';
import 'playlistlist_item_model.dart';

/// This class defines the variables used in the [list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ListModel {
  Rx<List<PlaylistlistItemModel>> playlistlistItemList = Rx([
    PlaylistlistItemModel(
        songNumber: "1".obs,
        burning: "Burning".obs,
        podvalCaplella: "Podval Caplella".obs),
    PlaylistlistItemModel(
        songNumber: "2".obs,
        burning: "Flashbacks".obs,
        podvalCaplella: "Emika".obs),
    PlaylistlistItemModel(
        songNumber: "3".obs,
        burning: "Renaissance".obs,
        podvalCaplella: "Podval Caplella".obs)
  ]);
}
