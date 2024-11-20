import 'package:devant/app/modules/presentation/dashboard.dart';
import 'package:devant/app/modules/presentation/home1.dart';
import 'package:devant/app/modules/presentation/home2.dart';
import 'package:devant/routes/routes.dart';
import 'package:get/get.dart';

class Theme1AppPages {
  static const INITIAL = Routes.ROOT;
  static const INITIAL_FOR_HOME_ = Routes.HOME1;
  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => const DashBoardScreen(),
    ),
    GetPage(
      name: Routes.HOME1,
      page: () => const HomeOneScreen(),
    ),
    GetPage(
      name: Routes.HOME2,
      page: () => const Home2Screen(),
    ),

  ];
}