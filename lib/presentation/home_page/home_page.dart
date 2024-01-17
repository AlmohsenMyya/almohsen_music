import '../home_page/widgets/newreleaseslist_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/newreleaseslist_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_title.dart';
import 'package:almohsen_music/widgets/app_bar/appbar_trailing_image.dart';
import 'package:almohsen_music/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_music/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_music/presentation/playlist_bottomsheet/playlist_bottomsheet.dart';
import 'package:almohsen_music/presentation/playlist_bottomsheet/controller/playlist_controller.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 26.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 24.h),
                        child: Column(children: [
                          Container(
                              width: 243.h,
                              margin: EdgeInsets.only(left: 49.h, right: 50.h),
                              child: Text("msg_listen_to_music_without".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.headlineMedium!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 26.v),
                          CustomElevatedButton(
                              height: 40.v,
                              width: 236.h,
                              text: "lbl_trial_version".tr,
                              buttonStyle:
                                  CustomButtonStyles.fillOnPrimaryContainerTL20,
                              buttonTextStyle:
                                  CustomTextStyles.bodyLargeBlack900),
                          SizedBox(height: 41.v),
                          Text("msg_free_for_3_months".tr,
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer),
                          SizedBox(height: 44.v),
                          _buildNewReleasesView(),
                          SizedBox(height: 20.v),
                          _buildNewReleasesList()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "lbl_dashboard".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildNewReleasesView() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_new_releases".tr, style: theme.textTheme.headlineSmall),
      GestureDetector(
          onTap: () {
            onTapTxtViewAll();
          },
          child: Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: Text("lbl_view_all".tr,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer)))
    ]);
  }

  /// Section Widget
  Widget _buildNewReleasesList() {
    return SizedBox(
        height: 230.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.h);
            },
            itemCount: controller
                .homeModelObj.value.newreleaseslistItemList.value.length,
            itemBuilder: (context, index) {
              NewreleaseslistItemModel model = controller
                  .homeModelObj.value.newreleaseslistItemList.value[index];
              return NewreleaseslistItemWidget(model);
            })));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [PlaylistBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [PlaylistController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapTxtViewAll() {
    Get.bottomSheet(
      PlaylistBottomsheet(
        Get.put(
          PlaylistController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
