// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get/get.dart';
import 'package:woo_network_assessment/feature/home/view/home_page.dart';
import 'package:woo_network_assessment/feature/splash/view/splash_page.dart';

import 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: SplashPage.new,
      children: [
        GetPage(
          name: Routes.home,
          page: HomePage.new,
        ),
      ],
    )
  ];
}
