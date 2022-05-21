import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:woo_network_assessment/app/base/request_result.dart';
import 'package:woo_network_assessment/app/messages/printers.dart';
import 'package:woo_network_assessment/data/data_models/coins_data_model.dart';
import 'package:woo_network_assessment/data/network/exception/network_exceptions.dart';

abstract class SplashRemoteDataSource {
  Future<RequestResult<CoinsDataModel>> readJsonData();
}

class SplashRemoteDataSourceImp extends SplashRemoteDataSource {
  SplashRemoteDataSourceImp();

  @override
  Future<RequestResult<CoinsDataModel>> readJsonData() async {
    try {
      final jsonData =
          await rootBundle.loadString('assets/json/mock_data.json');
      return RequestResult.success(
          data: CoinsDataModel.fromJson(json.decode(jsonData)));
    } on Exception catch (e) {
      realDebugPrint('readJsonDataEx $e');
      return RequestResult.failure(
        error: GeneralException(message: e),
      );
    }
  }
}
