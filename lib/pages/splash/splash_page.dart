import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gofit/route/router.dart';
import '../../core/resources/color_manager.dart';
import '../../core/resources/assets_manager.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1200), () => launchHome());
  }

  Future<void> launchHome() async {
    Get.offAllNamed(RouteManager.bottomNavigation);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(gradient: ColorManager.defaultGradient),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(AssetsManager.splashIcon),
                LoadingAnimationWidget.hexagonDots(
                  color: Colors.white,
                  size: size.width / 8,
                ),
              ],
            ),
          ),
        ));
  }
}
