import 'package:get/get.dart';
import 'package:woo_network_assessment/data/data_source/splash_data_source.dart';
import 'package:woo_network_assessment/data/local_storage/storege_service.dart';
import 'package:woo_network_assessment/data/network/networking.dart';
import 'package:woo_network_assessment/feature/splash/domain/controller/splash_controller.dart';
import 'package:woo_network_assessment/feature/splash/domain/repositories/splash_repository.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    //HomeBinding().dependencies();
    // SplashBinding().dependencies();

    Get.lazyPut<LocalStorage>(StorageService.new);
    Get.lazyPut<NetworkHelper>(
      NetworkHelper.new,
      fenix: true,
    );
    Get.lazyPut<SplashRemoteDataSource>(
      () => SplashRemoteDataSourceImp(),
      fenix: true,
    );

    Get.lazyPut<SplashRepository>(
      () => SplashRepositoryImp(
        Get.find<SplashRemoteDataSource>(),
      ),
      fenix: true,
    );

    Get.lazyPut<SplashController>(
      () => SplashController(Get.find<SplashRepository>()),
      fenix: true,
    );
  }
}
