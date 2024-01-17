import '../top_playlists_page/widgets/topplaylist_item_widget.dart';
import 'controller/top_playlists_controller.dart';
import 'models/top_playlists_model.dart';
import 'models/topplaylist_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_leading_image.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_music/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TopPlaylistsPage extends StatelessWidget {
  TopPlaylistsPage({Key? key}) : super(key: key);

  TopPlaylistsController controller =
      Get.put(TopPlaylistsController(TopPlaylistsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 20.v, right: 24.h),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 24.v);
                    },
                    itemCount: controller.topPlaylistsModelObj.value
                        .topplaylistItemList.value.length,
                    itemBuilder: (context, index) {
                      TopplaylistItemModel model = controller
                          .topPlaylistsModelObj
                          .value
                          .topplaylistItemList
                          .value[index];
                      return TopplaylistItemWidget(model,
                          onTapImgRenaissance: () {
                        onTapImgRenaissance();
                      });
                    })))));
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

  /// Navigates to the listScreen when the action is triggered.
  onTapImgRenaissance() {
    Get.toNamed(AppRoutes.listScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
