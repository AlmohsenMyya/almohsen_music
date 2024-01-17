import '../controller/song_menu_full_controller.dart';
import '../models/options_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  OptionsItemWidget(
    this.optionsItemModelObj, {
    Key? key,
    this.onTapImgAddtoPlaylist,
  }) : super(
          key: key,
        );

  OptionsItemModel optionsItemModelObj;

  var controller = Get.find<SongMenuFullController>();

  VoidCallback? onTapImgAddtoPlaylist;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: optionsItemModelObj.addtoPlaylist!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              onTap: () {
                onTapImgAddtoPlaylist!.call();
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 78.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Obx(
              () => Text(
                optionsItemModelObj.addToPlaylist!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
