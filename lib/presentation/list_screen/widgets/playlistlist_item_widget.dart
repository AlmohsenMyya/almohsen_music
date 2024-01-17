import '../controller/list_controller.dart';
import '../models/playlistlist_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaylistlistItemWidget extends StatelessWidget {
  PlaylistlistItemWidget(
    this.playlistlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistlistItemModel playlistlistItemModelObj;

  var controller = Get.find<ListController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 26.adaptSize,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 11.v,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Obx(
            () => Text(
              playlistlistItemModelObj.songNumber!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  playlistlistItemModelObj.burning!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 4.v),
              Obx(
                () => Text(
                  playlistlistItemModelObj.podvalCaplella!.value,
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
              top: 16.v,
              bottom: 22.v,
            ),
          ),
        ),
      ],
    );
  }
}
