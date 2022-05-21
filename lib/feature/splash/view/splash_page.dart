import 'package:flutter/material.dart';
import 'package:woo_network_assessment/app/base/base_view.dart';
import 'package:woo_network_assessment/app/resources/app_colors.dart';
import 'package:woo_network_assessment/feature/splash/components/app_load_full_screen.dart';
import 'package:woo_network_assessment/feature/splash/domain/controller/splash_controller.dart';

class SplashPage extends BaseView<SplashController> {
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget body(final BuildContext context) {
    return const APPLoadFullScreen(
      key: Key('AppLoadFullState'),
    );
  }

  @override
  Color pageBackgroundColor() {
    return AppColors.primary;
  }
}
