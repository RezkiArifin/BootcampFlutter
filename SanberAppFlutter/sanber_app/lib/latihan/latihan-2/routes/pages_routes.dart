import 'package:get/get.dart';
import 'package:sanber_app/latihan/latihan-2/pages/page_1.dart';
import 'package:sanber_app/latihan/latihan-2/pages/page_2.dart';
import 'package:sanber_app/latihan/latihan-2/pages/page_3.dart';
import 'package:sanber_app/latihan/latihan-2/routes/route_name.dart';

class PagesRoutesApp {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => const PageOne(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => const PageTwo(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => const PageThree(),
    ),
  ];
}
