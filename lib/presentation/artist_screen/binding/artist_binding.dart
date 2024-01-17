import '../controller/artist_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ArtistScreen.
///
/// This class ensures that the ArtistController is created when the
/// ArtistScreen is first loaded.
class ArtistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArtistController());
  }
}
