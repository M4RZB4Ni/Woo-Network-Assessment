import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:woo_network_assessment/app/base/base_view.dart';
import 'package:woo_network_assessment/app/resources/app_colors.dart';
import 'package:woo_network_assessment/app/resources/app_size.dart';
import 'package:woo_network_assessment/feature/general_components/app_search_box.dart';
import 'package:woo_network_assessment/feature/general_components/tabs/app_tabs.dart';
import 'package:woo_network_assessment/feature/home/domain/controller/home_controller.dart';
import 'package:woo_network_assessment/feature/home/local_components/app_currency_item_card.dart';

class HomePage extends BaseView<HomePageController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    return Obx(() => ListView.builder(
      itemCount: controller.coins.length,
      itemBuilder: (context, index) {
      return Obx(() => APPCurrencyItemCard(coin: controller.coins[index],type: controller.headerValue.value,));
    },));
  }

  @override
  PreferredSizeWidget? appBar(final BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.paper,
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: AppSize.s200.r,
      flexibleSpace: Column(
        children: [
          APPTabBar(tabController: controller.headerController, tabsText: controller.headerTexts,),
          const APPSearchBox(),
          APPTabBar(tabController: controller.tabController, tabsText: controller.tabTexts,),

        ],
      ),
    );
  }
}
