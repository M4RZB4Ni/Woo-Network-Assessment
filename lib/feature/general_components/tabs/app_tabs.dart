import 'package:flutter/material.dart';
import 'package:woo_network_assessment/app/messages/app_messages.dart';
import 'package:woo_network_assessment/app/resources/app_text_style.dart';

class APPTabBar extends StatelessWidget {
  const APPTabBar({Key? key, required this.tabController}) : super(key: key);

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: <Tab>[
        Tab(
          child: Text(AppMessage.tabAll, style: AppTextStyles.bodyText1),
        ),
        Tab(
          child: Text(AppMessage.tabSpot, style: AppTextStyles.bodyText1),
        ),
        Tab(
          child: Text(AppMessage.tabFutures, style: AppTextStyles.bodyText1),
        ),
      ],
    );
  }
}
