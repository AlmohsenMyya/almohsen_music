import '../../../core/app_export.dart';
import 'equalizer_item_model.dart';

/// This class defines the variables used in the [settings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsModel {
  Rx<List<EqualizerItemModel>> equalizerItemList = Rx([
    EqualizerItemModel(dBCounter: "4 dB".obs, hzCounter: "100 Hz".obs),
    EqualizerItemModel(dBCounter: "3 dB".obs, hzCounter: "150 Hz".obs),
    EqualizerItemModel(dBCounter: "0 dB".obs, hzCounter: "200 Hz".obs),
    EqualizerItemModel(dBCounter: "0 dB".obs, hzCounter: "250 Hz".obs),
    EqualizerItemModel(dBCounter: "-4 dB".obs, hzCounter: "300 Hz".obs),
    EqualizerItemModel(dBCounter: "0 dB".obs, hzCounter: "350 Hz".obs)
  ]);
}
