import '../../../core/app_export.dart';

/// This class is used in the [equalizer_item_widget] screen.
class EqualizerItemModel {
  EqualizerItemModel({
    this.dBCounter,
    this.hzCounter,
    this.id,
  }) {
    dBCounter = dBCounter ?? Rx("4 dB");
    hzCounter = hzCounter ?? Rx("100 Hz");
    id = id ?? Rx("");
  }

  Rx<String>? dBCounter;

  Rx<String>? hzCounter;

  Rx<String>? id;
}
