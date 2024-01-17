import '../settings_screen/widgets/equalizer_item_widget.dart';
import 'controller/settings_controller.dart';
import 'models/equalizer_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_music/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildEqualizer(),
                      SizedBox(height: 35.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_my_settings".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_default".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_club_music".tr,
                              style: CustomTextStyles
                                  .bodyLargeSecondaryContainer)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_classical_music".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 26.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("lbl_dance_music".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_low_frequency_gain".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 27.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_low_frequency_gain".tr,
                              style: theme.textTheme.bodyLarge)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 53.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_equalizer".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCloseOnprimarycontainer,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildEqualizer() {
    return SizedBox(
        height: 343.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 7.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 23.h);
            },
            itemCount: controller
                .settingsModelObj.value.equalizerItemList.value.length,
            itemBuilder: (context, index) {
              EqualizerItemModel model = controller
                  .settingsModelObj.value.equalizerItemList.value[index];
              return EqualizerItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
