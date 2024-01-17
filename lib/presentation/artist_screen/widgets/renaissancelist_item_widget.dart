import '../controller/artist_controller.dart';
import '../models/renaissancelist_item_model.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RenaissancelistItemWidget extends StatelessWidget {
  RenaissancelistItemWidget(
    this.renaissancelistItemModelObj, {
    Key? key,
    this.onTapUrgentSiege,
  }) : super(
          key: key,
        );

  RenaissancelistItemModel renaissancelistItemModelObj;

  var controller = Get.find<ArtistController>();

  VoidCallback? onTapUrgentSiege;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 159.h,
      child: GestureDetector(
        onTap: () {
          onTapUrgentSiege!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: renaissancelistItemModelObj.urgentSiege!.value,
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
                renaissancelistItemModelObj.urgentSiege1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 2.v),
            Obx(
              () => Text(
                renaissancelistItemModelObj.damnedAnthem!.value,
                style: CustomTextStyles.bodyMediumOnPrimaryContainer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
