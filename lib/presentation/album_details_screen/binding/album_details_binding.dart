import '../controller/album_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AlbumDetailsScreen.
///
/// This class ensures that the AlbumDetailsController is created when the
/// AlbumDetailsScreen is first loaded.
class AlbumDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlbumDetailsController());
  }
}
