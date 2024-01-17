import '../controller/albums_controller.dart';
import '../models/albums_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlbumsItemWidget extends StatelessWidget {
  AlbumsItemWidget(
    this.albumsItemModelObj, {
    Key? key,
    this.onTapAlbum,
  }) : super(
          key: key,
        );

  AlbumsItemModel albumsItemModelObj;

  var controller = Get.find<AlbumsController>();

  VoidCallback? onTapAlbum;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapAlbum!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: albumsItemModelObj.flowerPower!.value,
              height: 78.adaptSize,
              width: 78.adaptSize,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    albumsItemModelObj.flowerPower1!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 5.v),
                Obx(
                  () => Text(
                    albumsItemModelObj.rayCharles!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    albumsItemModelObj.zipcode!.value,
                    style: CustomTextStyles.bodyLargeBluegray400,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.503,
            child: CustomImageView(
              imagePath: ImageConstant.imgMoreIcon,
              height: 4.v,
              width: 20.h,
              margin: EdgeInsets.symmetric(vertical: 37.v),
            ),
          ),
        ],
      ),
    );
  }
}
