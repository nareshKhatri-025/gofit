import 'package:flutter/material.dart';
import 'package:gofit/pages/onboarding/widgets/onboard_carousel_widget.dart';
import '../../core/resources/assets_manager.dart';
import '../../core/resources/string_manager.dart';
import './model/onboarding_item.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _controller;
  final items = [
    OnBoardItem(AssetsManager.onBoarding1, AppStrings.onBoardingDescription1),
    OnBoardItem(AssetsManager.onBoarding2, AppStrings.onBoardingDescription2),
    OnBoardItem(AssetsManager.onBoarding3, AppStrings.onBoardingDescription3),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OnBoardCarouselWidget(
            items: items,
          ),
        ],
      ),
    );
  }
}
