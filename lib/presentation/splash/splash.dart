import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyf/design_system/colors.dart';
import 'package:studyf/base/BaseScreenState.dart';

import 'SplashProvider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseScreenState<SplashScreen, SplashProvider> {
  @override
  void initView(SplashProvider provider) {
    super.initView(provider);
    Future.delayed(const Duration(seconds: 5), () {
      provider.increment();
    });

  }
  @override
  Widget buildBody(BuildContext context, SplashProvider provider) {
    print(provider.counter);
    return Scaffold(
      backgroundColor: splashBackground,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ic/splash.png',
            ),
          ],
        ),
      ),
    );
  }
}
