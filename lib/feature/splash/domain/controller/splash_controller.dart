import 'package:get/get.dart';
import 'package:woo_network_assessment/app/base/base_controller.dart';
import 'package:woo_network_assessment/app/messages/printers.dart';
import 'package:woo_network_assessment/app/routes/app_routes.dart';
import 'package:woo_network_assessment/data/data_models/coins_data_model.dart';
import 'package:woo_network_assessment/data/network/exception/network_exceptions.dart';
import 'package:woo_network_assessment/feature/splash/domain/repositories/splash_repository.dart';

class SplashController extends BaseController {
  SplashController(this._repo);
  final SplashRepository _repo;
  List<Coin>? coins;

  @override
  void onInit() {
    readCoins();
    super.onInit();
  }

  Future<void> readCoins() async {
    final response = await _repo.readJsonData();
    response.when(
      success: (final result) async {
        coins = result.data;
        realDebugPrint('dataFetched-->${coins!.first}');
        goToHome();
      },
      failure: (final err) {
        FetchDataException(err.toString());
      },
    );
  }

  void goToHome() => Get.toNamed(
        '${Routes.splash}${Routes.home}',
      );
}
