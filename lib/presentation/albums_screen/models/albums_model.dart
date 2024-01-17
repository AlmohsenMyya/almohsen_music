import '../../../core/app_export.dart';
import 'albums_item_model.dart';

/// This class defines the variables used in the [albums_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumsModel {
  Rx<List<AlbumsItemModel>> albumsItemList = Rx([
    AlbumsItemModel(
        flowerPower: ImageConstant.imgThumbnail78x78.obs,
        flowerPower1: "Flower Power".obs,
        rayCharles: "Ray Charles".obs,
        zipcode: "2018".obs),
    AlbumsItemModel(
        flowerPower: ImageConstant.imgThumbnail1.obs,
        flowerPower1: "This Is Not A Test".obs,
        rayCharles: "Ray Charles".obs,
        zipcode: "2018".obs),
    AlbumsItemModel(
        flowerPower: ImageConstant.imgThumbnail2.obs,
        flowerPower1: "SHE IS COMING".obs,
        rayCharles: "Ray Charles".obs,
        zipcode: "2018".obs),
    AlbumsItemModel(
        flowerPower: ImageConstant.imgThumbnail3.obs,
        flowerPower1: "Danheim".obs,
        rayCharles: "Ray Charles".obs,
        zipcode: "2018".obs),
    AlbumsItemModel(
        flowerPower: ImageConstant.imgThumbnail4.obs,
        flowerPower1: "Wunder King".obs,
        rayCharles: "Элджей".obs,
        zipcode: "2018".obs),
    AlbumsItemModel(
        flowerPower: ImageConstant.imgThumbnail5.obs,
        flowerPower1: "VELVET: Side A".obs,
        rayCharles: "Adam Lambert".obs,
        zipcode: "2018".obs)
  ]);
}
