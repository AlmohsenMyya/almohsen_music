import '../controller/albums_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AlbumsScreen.
///
/// This class ensures that the AlbumsController is created when the
/// AlbumsScreen is first loaded.
class AlbumsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AlbumsController());
  }
}
