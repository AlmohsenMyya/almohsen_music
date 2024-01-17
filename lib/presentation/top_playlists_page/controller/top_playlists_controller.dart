import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/presentation/top_playlists_page/models/top_playlists_model.dart';

/// A controller class for the TopPlaylistsPage.
///
/// This class manages the state of the TopPlaylistsPage, including the
/// current topPlaylistsModelObj
class TopPlaylistsController extends GetxController {
  TopPlaylistsController(this.topPlaylistsModelObj);

  Rx<TopPlaylistsModel> topPlaylistsModelObj;
}
