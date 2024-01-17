import '../list_screen/widgets/playlistlist_item_widget.dart';
import 'controller/list_controller.dart';
import 'models/playlistlist_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_music/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_music/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ListScreen extends GetWidget<ListController> {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
                child: Column(children: [
                  _buildMusicDetails(),
                  SizedBox(height: 18.v),
                  _buildActions(),
                  Spacer(flex: 39),
                  _buildPlaylistList(),
                  Spacer(flex: 60)
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
        title: AppbarTitle(text: "lbl_top_playlists".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildMusicDetails() {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgPlaylistThumbnail,
          height: 136.adaptSize,
          width: 136.adaptSize,
          radius: BorderRadius.circular(68.h)),
      SizedBox(height: 7.v),
      GestureDetector(
          onTap: () {
            onTapTxtRenaissance();
          },
          child: Text("lbl_renaissance".tr,
              style: CustomTextStyles.headlineSmallMedium)),
      SizedBox(height: 10.v),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("lbl_843_tracks".tr, style: theme.textTheme.bodyLarge),
        Opacity(
            opacity: 0.648,
            child: Container(
                height: 3.adaptSize,
                width: 3.adaptSize,
                margin: EdgeInsets.only(left: 4.h, top: 9.v, bottom: 6.v),
                decoration: BoxDecoration(
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.58),
                    borderRadius: BorderRadius.circular(1.h)))),
        Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text("lbl_23_hours".tr, style: theme.textTheme.bodyLarge))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildActions() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 16.v, bottom: 15.v),
          child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL19,
              child: CustomImageView(imagePath: ImageConstant.imgQuestion))),
      Padding(
          padding: EdgeInsets.only(left: 26.h),
          child: CustomIconButton(
              height: 69.adaptSize,
              width: 69.adaptSize,
              child: CustomImageView())),
      Padding(
          padding: EdgeInsets.only(left: 26.h, top: 16.v, bottom: 15.v),
          child: CustomIconButton(
              height: 38.adaptSize,
              width: 38.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillOnPrimaryContainerTL19,
              child: CustomImageView(
                  imagePath: ImageConstant.imgBookmarkOnprimarycontainer)))
    ]);
  }

  /// Section Widget
  Widget _buildPlaylistList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 17.v);
        },
        itemCount:
            controller.listModelObj.value.playlistlistItemList.value.length,
        itemBuilder: (context, index) {
          PlaylistlistItemModel model =
              controller.listModelObj.value.playlistlistItemList.value[index];
          return PlaylistlistItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the artistScreen when the action is triggered.
  onTapTxtRenaissance() {
    Get.toNamed(
      AppRoutes.artistScreen,
    );
  }
}
