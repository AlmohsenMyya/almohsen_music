import '../../../core/app_export.dart';
import 'newreleaseslist_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<NewreleaseslistItemModel>> newreleaseslistItemList = Rx([
    NewreleaseslistItemModel(
        urgentSiege: ImageConstant.imgThumbnails.obs,
        urgentSiege1: "Urgent Siege".obs,
        damnedAnthem: "Damned Anthem".obs),
    NewreleaseslistItemModel(
        urgentSiege: ImageConstant.imgThumbnails181x159.obs,
        urgentSiege1: "Urgent Siege".obs,
        damnedAnthem: "Damned Anthem".obs)
  ]);
}
