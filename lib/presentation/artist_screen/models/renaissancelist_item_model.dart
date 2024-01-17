import '../../../core/app_export.dart';

/// This class is used in the [renaissancelist_item_widget] screen.
class RenaissancelistItemModel {
  RenaissancelistItemModel({
    this.urgentSiege,
    this.urgentSiege1,
    this.damnedAnthem,
    this.id,
  }) {
    urgentSiege = urgentSiege ?? Rx(ImageConstant.imgThumbnails);
    urgentSiege1 = urgentSiege1 ?? Rx("Urgent Siege");
    damnedAnthem = damnedAnthem ?? Rx("Damned Anthem");
    id = id ?? Rx("");
  }

  Rx<String>? urgentSiege;

  Rx<String>? urgentSiege1;

  Rx<String>? damnedAnthem;

  Rx<String>? id;
}
