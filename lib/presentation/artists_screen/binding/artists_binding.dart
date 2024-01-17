import '../controller/artists_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArtistsScreen.
///
/// This class ensures that the ArtistsController is created when the
/// ArtistsScreen is first loaded.
class ArtistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArtistsController());
  }
}
