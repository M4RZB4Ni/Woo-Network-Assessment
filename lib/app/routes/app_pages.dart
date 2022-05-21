// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get/get.dart';
import 'package:woo_network_assessment/feature/splash/domain/controller/splash_controller.dart';
import 'package:woo_network_assessment/feature/splash/domain/repositories/splash_repository.dart';
import 'package:woo_network_assessment/feature/splash/view/splash_page.dart';

import 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: SplashPage.new,
      binding: BindingsBuilder(() {
        return Get.lazyPut(
          () => SplashController(Get.find<SplashRepository>()),
        );
      }),
      children: [
        // GetPage(
        //   name: Routes.home,
        //   page: HomePage.new,
        //   binding: BindingsBuilder(() {
        //     return Get.lazyPut(
        //       HomePageController.new,
        //     );
        //   }),
        // ),
      ],
    )
  ];
}
