import '../controller/home_controller.dart';
import '../models/newreleaseslist_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewreleaseslistItemWidget extends StatelessWidget {
  NewreleaseslistItemWidget(
    this.newreleaseslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NewreleaseslistItemModel newreleaseslistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: newreleaseslistItemModelObj.urgentSiege!.value,
              height: 181.v,
              width: 159.h,
              radius: BorderRadius.circular(
                12.h,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              newreleaseslistItemModelObj.urgentSiege1!.value,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              newreleaseslistItemModelObj.damnedAnthem!.value,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
