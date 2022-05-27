import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_network_assessment/app/base/base_controller.dart';
import 'package:woo_network_assessment/app/messages/app_messages.dart';
import 'package:woo_network_assessment/app/messages/printers.dart';
import 'package:woo_network_assessment/data/data_models/coins_data_model.dart';

class HomePageController extends BaseController
    with GetTickerProviderStateMixin {
  TextEditingController? searchController = TextEditingController();
  late RxList<Coin> pureCoins;
  late RxList<Coin> coins;
  TabController? tabController;
  TabController? headerController;
  late List<String> tabTexts;
  late List<String> headerTexts;
  RxString headerValue = AppMessage.tabAll.obs;

  @override
  void onInit() {
    coins = RxList.from(Get.arguments);
    pureCoins = RxList.from(Get.arguments);
    backupCoins = RxList.from(Get.arguments);
    modifyCoins();
    coins.value = pureCoins;

    tabTexts = [AppMessage.symbol, AppMessage.lastPrice, AppMessage.volume];
    headerTexts = [
      AppMessage.tabAll,
      AppMessage.tabSpot,
      AppMessage.tabFutures
    ];
    tabController = TabController(vsync: this, length: 3);
    headerController = TabController(vsync: this, length: 3);

    headerListener();
    tabsListener();
    realDebugPrint('modified_> ${pureCoins.first.symbol}');
    super.onInit();
  }

  void search(String str) {
    if (str.isNotEmpty) {
      coins.value = coins
          .where(
            (element) => element.base.toString().toLowerCase().contains(str),
          )
          .toList();
    } else {
      coins.value = pureCoins.toList();
    }
  }

  void tabsListener() {
    tabController!.addListener(() {
      searchController!.clear();
      realDebugPrint('headerChange-> ${tabController!.index}');
      // coins.clear();
      if (tabController!.index == 0) {
        allSort();
      } else if (tabController!.index == 1) {
        lastPriceSortingManager();
      } else {
        volumeSortingManager();
      }
      realDebugPrint('this is the List-> ${coins.length}');
    });
  }

  void headerListener() {
    headerController!.addListener(() {
      searchController!.clear();

      realDebugPrint('headerChange-> ${headerController!.index}');
      // coins.clear();
      if (headerController!.index == 0) {
        headerValue.value = AppMessage.tabAll;
        coins.value = pureCoins;
        allSort();
      } else if (headerController!.index == 1) {
        headerValue.value = AppMessage.tabSpot;

        coins.value =
            pureCoins.where((element) => element.type == 'SPOT').toList();
        _sortDescByVolume();
      } else {
        headerValue.value = AppMessage.tabFutures;
        coins.value =
            pureCoins.where((element) => element.type == 'FUTURES').toList();
        _sortDescByVolume();
      }
      realDebugPrint('this is the List-> ${coins.length}');
    });
  }

  void allSort() {
    coins.sort((a, b) => a.toString().compareTo(b.toString()));
    coins.insertAll(0, coins.where((p0) => p0.base == 'WOO'));

    coins.insertAll(coins.lastIndexWhere((element) => element.base == 'WOO', 0),
        coins.where((p0) => p0.base == 'ETH'));

    coins.insertAll(coins.lastIndexWhere((element) => element.base == 'ETH', 0),
        coins.where((p0) => p0.base == 'BTC'));

    coins.value = coins.toSet().toList();
  }

  void _sortDescByVolume() {
    coins.sort(
      (b, a) => b.volume!.compareTo(a.volume!),
    );
  }

  void _sortAscendingByVolume() {
    coins.sort(
      (a, b) => a.volume!.compareTo(b.volume!),
    );
  }

  void _sortDescByLastPrice() {
    coins.sort(
      (b, a) => b.lastPrice!.compareTo(a.lastPrice!),
    );
  }

  void _sortAscendingByLastPrice() {
    coins.sort(
      (b, a) => a.lastPrice!.compareTo(b.lastPrice!),
    );
  }

  int lastPriceSortingState = 0;
  int volumeSortingState = 0;
  late RxList<Coin> backupCoins;

  void lastPriceSortingManager() {
    switch (lastPriceSortingState) {
      case 0:
        backupCoins.value = coins;
        _sortAscendingByLastPrice();
        lastPriceSortingState = lastPriceSortingState + 1;
        break;
      case 1:
        _sortDescByLastPrice();
        lastPriceSortingState = lastPriceSortingState + 1;
        break;
      case 2:
        coins.reversed;
        lastPriceSortingState = 0;
        break;
    }
  }

  void volumeSortingManager() {
    switch (volumeSortingState) {
      case 0:
        backupCoins.value = coins;
        _sortAscendingByVolume();
        volumeSortingState = volumeSortingState + 1;
        break;
      case 1:
        _sortDescByVolume();
        volumeSortingState = volumeSortingState + 1;
        break;
      case 2:
        coins.reversed;
        volumeSortingState = 0;
        break;
    }
  }

  void modifyCoins() {
    for (var element in pureCoins) {
      pureCoins[pureCoins.indexOf(element)] =
          element.copyWith(symbol: typeChecker(element));
    }
  }

  typeChecker(Coin coin) {
    if (coin.type == 'SPOT') {
      return '${coin.base}/${coin.quote}';
    } else if (coin.type == 'FUTURES') {
      return '${coin.base}/PERP';
    }
  }
}
