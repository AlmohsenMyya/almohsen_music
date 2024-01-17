import '../controller/artists_controller.dart';
import '../models/artists_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArtistsItemWidget extends StatelessWidget {
  ArtistsItemWidget(
    this.artistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistsItemModel artistsItemModelObj;

  var controller = Get.find<ArtistsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: artistsItemModelObj.lorn!.value,
            height: 76.v,
            width: 78.h,
            radius: BorderRadius.circular(
              39.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 17.v,
            bottom: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  artistsItemModelObj.renaissance!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 2.v),
              Obx(
                () => Text(
                  artistsItemModelObj.podvalCaplella!.value,
                  style: theme.textTheme.bodyMedium,
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
            height: 3.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 33.v,
              bottom: 38.v,
            ),
          ),
        ),
      ],
    );
  }
}
