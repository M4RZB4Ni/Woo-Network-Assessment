import 'package:woo_network_assessment/app/base/request_result.dart';
import 'package:woo_network_assessment/data/data_models/coins_data_model.dart';
import 'package:woo_network_assessment/data/data_source/splash_data_source.dart';

abstract class SplashRepository {
  Future<RequestResult<CoinsDataModel>> readJsonData();
}

class SplashRepositoryImp extends SplashRepository {
  SplashRepositoryImp(this._dataSource);
  final SplashRemoteDataSource _dataSource;

  @override
  Future<RequestResult<CoinsDataModel>> readJsonData() async {
    final result = await _dataSource.readJsonData();
    return result.when(
      success: (final lang) {
        return RequestResult.success(data: lang);
      },
      failure: (final error) {
        return RequestResult.failure(error: error);
      },
    );
  }
}
