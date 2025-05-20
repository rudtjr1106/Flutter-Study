import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyf/design_system/colors.dart';

import 'SplashProvider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    SplashProvider provider = context.watch<SplashProvider>();

    print(provider.counter.toString());

    Future.delayed(const Duration(seconds: 5), () {
      provider.increment();
    });
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
