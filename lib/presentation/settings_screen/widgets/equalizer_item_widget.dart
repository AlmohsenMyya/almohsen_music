import '../controller/settings_controller.dart';
import '../models/equalizer_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EqualizerItemWidget extends StatelessWidget {
  EqualizerItemWidget(
    this.equalizerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EqualizerItemModel equalizerItemModelObj;

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38.h,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Obx(
                () => Text(
                  equalizerItemModelObj.dBCounter!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.img1,
            height: 298.v,
            width: 19.h,
          ),
          SizedBox(height: 6.v),
          Obx(
            () => Text(
              equalizerItemModelObj.hzCounter!.value,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
