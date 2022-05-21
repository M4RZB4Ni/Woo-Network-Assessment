import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_network_assessment/app/base/base_view.dart';
import 'package:woo_network_assessment/feature/general_components/app_search_box.dart';
import 'package:woo_network_assessment/feature/general_components/tabs/app_tabs.dart';
import 'package:woo_network_assessment/feature/home/domain/controller/home_controller.dart';

class HomePage extends BaseView<HomePageController> {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context) {
    // TODO: implement body
    return Container();
  }

  @override
  PreferredSizeWidget? appBar(final BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      toolbarHeight: 145.r,
      flexibleSpace: Column(
        children: [
          APPTabBar(tabController: controller.tabController),
          const APPSearchBox()
        ],
      ),
    );
  }
}
