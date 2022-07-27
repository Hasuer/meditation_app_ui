import 'package:get/get.dart';

import 'screens/detail/detail_screen.dart';
import 'screens/home/home_screen.dart';

class Routes {
  static const homeScreen = '/homeScreen';
  static const detailScreen = '/detailScreen';
}

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.detailScreen,
      page: () => const DetailScreen(),
    ),
  ];
}
