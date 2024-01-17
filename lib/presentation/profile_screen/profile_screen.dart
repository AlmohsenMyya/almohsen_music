import 'controller/profile_controller.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_music/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_music/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v),
                child: Column(children: [
                  _buildProfileDetails(),
                  SizedBox(height: 48.v),
                  _buildThirtyNine(),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(text: "msg_restore_purchases".tr),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(text: "msg_enter_promo_code".tr),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(text: "lbl_quit".tr),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_profile".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCloseOnprimarycontainer,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildProfileDetails() {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgProfileThumbnail,
          height: 97.adaptSize,
          width: 97.adaptSize,
          radius: BorderRadius.circular(48.h)),
      SizedBox(height: 12.v),
      Text("lbl_erlik_bachman".tr, style: theme.textTheme.titleMedium),
      SizedBox(height: 4.v),
      Text("msg_bachman_mail_com".tr,
          style: CustomTextStyles.bodyMediumOnPrimaryContainer)
    ]);
  }

  /// Section Widget
  Widget _buildThirtyNine() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 97.h, vertical: 17.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder9),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_my_subscription".tr, style: theme.textTheme.bodyLarge),
              SizedBox(height: 8.v),
              Text("msg_valid_until_may".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
