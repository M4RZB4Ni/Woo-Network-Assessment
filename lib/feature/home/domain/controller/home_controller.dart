import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_network_assessment/app/base/base_controller.dart';
import 'package:woo_network_assessment/data/data_models/coins_data_model.dart';
import 'package:woo_network_assessment/feature/splash/domain/controller/splash_controller.dart';

class HomePageController extends BaseController
    with GetSingleTickerProviderStateMixin {
  List<Coin>? coins;
  TabController? tabController;
  @override
  void onInit() {
    tabController = TabController(vsync: this, length: 3);

    coins = Get.find<SplashController>().coins;

    super.onInit();
  }

  String k_m_b_generator(num) {
    if (num > 999 && num < 99999) {
      return "${(num / 1000).toStringAsFixed(1)} K";
    } else if (num > 99999 && num < 999999) {
      return "${(num / 1000).toStringAsFixed(0)} K";
    } else if (num > 999999 && num < 999999999) {
      return "${(num / 1000000).toStringAsFixed(1)} M";
    } else if (num > 999999999) {
      return "${(num / 1000000000).toStringAsFixed(1)} B";
    } else {
      return num.toString();
    }
  }
}
