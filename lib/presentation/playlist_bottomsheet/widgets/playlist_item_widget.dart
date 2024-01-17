import '../controller/playlist_controller.dart';
import '../models/playlist_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  PlaylistItemWidget(
    this.playlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistItemModel playlistItemModelObj;

  var controller = Get.find<PlaylistController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: playlistItemModelObj.flashbacks!.value,
            height: 59.v,
            width: 60.h,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 7.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  playlistItemModelObj.renaissance!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  playlistItemModelObj.podvalCaplella!.value,
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
            height: 4.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 27.v,
              bottom: 28.v,
            ),
          ),
        ),
      ],
    );
  }
}
