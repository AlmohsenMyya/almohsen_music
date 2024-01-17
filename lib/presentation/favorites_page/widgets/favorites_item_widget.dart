import '../controller/favorites_controller.dart';
import '../models/favorites_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FavoritesItemWidget extends StatelessWidget {
  FavoritesItemWidget(
    this.favoritesItemModelObj, {
    Key? key,
    this.onTapFavouritesOption,
  }) : super(
          key: key,
        );

  FavoritesItemModel favoritesItemModelObj;

  var controller = Get.find<FavoritesController>();

  VoidCallback? onTapFavouritesOption;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFavouritesOption!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder9,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: favoritesItemModelObj.tracks!.value,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 105.h,
                bottom: 3.v,
              ),
              child: Obx(
                () => Text(
                  favoritesItemModelObj.addToPlaylist!.value,
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
