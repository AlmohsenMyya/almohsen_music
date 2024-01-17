import '../controller/list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ListScreen.
///
/// This class ensures that the ListController is created when the
/// ListScreen is first loaded.
class ListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListController());
  }
}
