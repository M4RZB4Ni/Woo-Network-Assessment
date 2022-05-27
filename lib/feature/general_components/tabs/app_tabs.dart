import 'package:flutter/material.dart';
import 'package:woo_network_assessment/app/messages/app_messages.dart';
import 'package:woo_network_assessment/app/resources/app_colors.dart';
import 'package:woo_network_assessment/app/resources/app_text_style.dart';

class APPTabBar extends StatelessWidget {
  const APPTabBar({Key? key, required this.tabController, required this.tabsText}) : super(key: key);

  final TabController? tabController;
  final List<String> tabsText;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelStyle: AppTextStyles.bodyText1,
      controller: tabController,
      unselectedLabelColor: AppColors.error,
      labelColor: AppColors.primary,
      tabs:  <Widget>[
        Tab(
          text: tabsText.first,
        ),
        Tab(
          text: tabsText[1],
        ),
        Tab(
          text: tabsText.last,
        )
      ],
    );
  }
}
