import '../../../core/app_export.dart';

/// This class is used in the [artists_item_widget] screen.
class ArtistsItemModel {
  ArtistsItemModel({
    this.lorn,
    this.renaissance,
    this.podvalCaplella,
    this.id,
  }) {
    lorn = lorn ?? Rx(ImageConstant.imgPhoto876x78);
    renaissance = renaissance ?? Rx("Lorn");
    podvalCaplella = podvalCaplella ?? Rx("843 tracks . 23 albums");
    id = id ?? Rx("");
  }

  Rx<String>? lorn;

  Rx<String>? renaissance;

  Rx<String>? podvalCaplella;

  Rx<String>? id;
}
