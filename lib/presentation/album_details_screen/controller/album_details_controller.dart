import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/presentation/album_details_screen/models/album_details_model.dart';

/// A controller class for the AlbumDetailsScreen.
///
/// This class manages the state of the AlbumDetailsScreen, including the
/// current albumDetailsModelObj
class AlbumDetailsController extends GetxController {
  Rx<AlbumDetailsModel> albumDetailsModelObj = AlbumDetailsModel().obs;
}
