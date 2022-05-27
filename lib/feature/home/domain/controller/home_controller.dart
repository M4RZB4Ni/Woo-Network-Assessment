import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_network_assessment/app/base/base_controller.dart';
import 'package:woo_network_assessment/app/messages/app_messages.dart';
import 'package:woo_network_assessment/app/messages/printers.dart';
import 'package:woo_network_assessment/data/data_models/coins_data_model.dart';

class HomePageController extends BaseController
    with GetTickerProviderStateMixin {
  late RxList<Coin> pureCoins;
  late RxList<Coin> coins;
  TabController? tabController;
  TabController? headerController;
  late List<String> tabTexts;
  late List<String> headerTexts;
  RxString headerValue=AppMessage.tabAll.obs;
  @override
  void onInit() {
    coins = RxList.from(Get.arguments);
    pureCoins = RxList.from(Get.arguments);
    tabTexts=[AppMessage.SYMBOL,AppMessage.LASTPRICE,AppMessage.VOLUME];
    headerTexts=[AppMessage.tabAll,AppMessage.tabSpot,AppMessage.tabFutures];
    tabController = TabController(vsync: this, length: 3);
    headerController = TabController(vsync: this, length: 3);


    headerListener();
    super.onInit();
  }

  void headerListener()
  {
    headerController!.addListener(() {
      realDebugPrint('headerChange-> ${headerController!.index}');
      // coins.clear();
        if(headerController!.index==0)
          {
            headerValue.value=AppMessage.tabAll;
            coins.value=pureCoins;
          }else if(headerController!.index==1){
          headerValue.value=AppMessage.tabSpot;
          coins.value=pureCoins.where((element) => element.type=='SPOT').toList();
        }else{
          headerValue.value=AppMessage.tabFutures;
          coins.value=pureCoins.where((element) => element.type=='FUTURES').toList();


        }
        realDebugPrint('this is the List-> ${coins.length}');
    });
  }


}
