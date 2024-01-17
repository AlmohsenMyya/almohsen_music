import '../../../core/app_export.dart';

/// This class is used in the [albums_item_widget] screen.
class AlbumsItemModel {
  AlbumsItemModel({
    this.flowerPower,
    this.flowerPower1,
    this.rayCharles,
    this.zipcode,
    this.id,
  }) {
    flowerPower = flowerPower ?? Rx(ImageConstant.imgThumbnail78x78);
    flowerPower1 = flowerPower1 ?? Rx("Flower Power");
    rayCharles = rayCharles ?? Rx("Ray Charles");
    zipcode = zipcode ?? Rx("2018");
    id = id ?? Rx("");
  }

  Rx<String>? flowerPower;

  Rx<String>? flowerPower1;

  Rx<String>? rayCharles;

  Rx<String>? zipcode;

  Rx<String>? id;
}
