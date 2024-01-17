import 'package:almohsen_music/presentation/login_screen/login_screen.dart';
import 'package:almohsen_music/presentation/login_screen/binding/login_binding.dart';
import 'package:almohsen_music/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:almohsen_music/presentation/home_page_container_screen/binding/home_page_container_binding.dart';
import 'package:almohsen_music/presentation/list_screen/list_screen.dart';
import 'package:almohsen_music/presentation/list_screen/binding/list_binding.dart';
import 'package:almohsen_music/presentation/settings_screen/settings_screen.dart';
import 'package:almohsen_music/presentation/settings_screen/binding/settings_binding.dart';
import 'package:almohsen_music/presentation/profile_screen/profile_screen.dart';
import 'package:almohsen_music/presentation/profile_screen/binding/profile_binding.dart';
import 'package:almohsen_music/presentation/artists_screen/artists_screen.dart';
import 'package:almohsen_music/presentation/artists_screen/binding/artists_binding.dart';
import 'package:almohsen_music/presentation/artist_screen/artist_screen.dart';
import 'package:almohsen_music/presentation/artist_screen/binding/artist_binding.dart';
import 'package:almohsen_music/presentation/albums_screen/albums_screen.dart';
import 'package:almohsen_music/presentation/albums_screen/binding/albums_binding.dart';
import 'package:almohsen_music/presentation/album_details_screen/album_details_screen.dart';
import 'package:almohsen_music/presentation/album_details_screen/binding/album_details_binding.dart';
import 'package:almohsen_music/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:almohsen_music/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String homePage = '/home_page';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String topPlaylistsPage = '/top_playlists_page';

  static const String listScreen = '/list_screen';

  static const String settingsScreen = '/settings_screen';

  static const String favoritesPage = '/favorites_page';

  static const String profileScreen = '/profile_screen';

  static const String artistsScreen = '/artists_screen';

  static const String artistScreen = '/artist_screen';

  static const String albumsScreen = '/albums_screen';

  static const String albumDetailsScreen = '/album_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: homePageContainerScreen,
      page: () => HomePageContainerScreen(),
      bindings: [
        HomePageContainerBinding(),
      ],
    ),
    GetPage(
      name: listScreen,
      page: () => ListScreen(),
      bindings: [
        ListBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: artistsScreen,
      page: () => ArtistsScreen(),
      bindings: [
        ArtistsBinding(),
      ],
    ),
    GetPage(
      name: artistScreen,
      page: () => ArtistScreen(),
      bindings: [
        ArtistBinding(),
      ],
    ),
    GetPage(
      name: albumsScreen,
      page: () => AlbumsScreen(),
      bindings: [
        AlbumsBinding(),
      ],
    ),
    GetPage(
      name: albumDetailsScreen,
      page: () => AlbumDetailsScreen(),
      bindings: [
        AlbumDetailsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
