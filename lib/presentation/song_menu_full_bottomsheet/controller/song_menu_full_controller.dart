import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/presentation/song_menu_full_bottomsheet/models/song_menu_full_model.dart';

/// A controller class for the SongMenuFullBottomsheet.
///
/// This class manages the state of the SongMenuFullBottomsheet, including the
/// current songMenuFullModelObj
class SongMenuFullController extends GetxController {
  Rx<SongMenuFullModel> songMenuFullModelObj = SongMenuFullModel().obs;
}
