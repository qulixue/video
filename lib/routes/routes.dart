import 'package:get/get.dart';

import '../home/home.dart';
import '../home/video/video_test.dart';

abstract class Routes {
  static const rootPageViewRoutes = '/HomePage';
  static const video = '/VideoPlayerWithSubtitle';
}

class AppPages {
  static const initial = Routes.rootPageViewRoutes;
  static final routes = [
    GetPage(
      name: Routes.rootPageViewRoutes,
      page: () => const HomePage(),
    ),
    GetPage(
      name: Routes.video,
      page: () => const VideoPlayerWithSubtitle(),
    ),



  ];
}
