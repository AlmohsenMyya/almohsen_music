import '../../../core/app_export.dart';
import 'artists_item_model.dart';

/// This class defines the variables used in the [artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArtistsModel {
  Rx<List<ArtistsItemModel>> artistsItemList = Rx([
    ArtistsItemModel(
        lorn: ImageConstant.imgPhoto876x78.obs,
        renaissance: "Lorn".obs,
        podvalCaplella: "843 tracks . 23 albums".obs),
    ArtistsItemModel(
        lorn: ImageConstant.imgPhoto87.obs,
        renaissance: "Danheim".obs,
        podvalCaplella: "843 tracks . 23 albums".obs),
    ArtistsItemModel(
        lorn: ImageConstant.imgPhoto88.obs,
        renaissance: "Brand X Music".obs,
        podvalCaplella: "843 tracks . 23 albums".obs),
    ArtistsItemModel(
        lorn: ImageConstant.imgPhoto89.obs,
        renaissance: "Damned Anthem".obs,
        podvalCaplella: "843 tracks . 23 albums".obs),
    ArtistsItemModel(
        lorn: ImageConstant.imgPhoto810.obs,
        renaissance: "BONES".obs,
        podvalCaplella: "843 tracks . 23 albums".obs),
    ArtistsItemModel(
        lorn: ImageConstant.imgPhoto811.obs,
        renaissance: "Epic North".obs,
        podvalCaplella: "843 tracks . 23 albums".obs)
  ]);
}
