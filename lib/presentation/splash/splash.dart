import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:studyf/design_system/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBackground,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ic/splash.png',
              width: 46.0,
              height: 46.0,
            ),

            SizedBox(height: 30),

            Text(
              "쓰따디 스플래쉬",
              style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic
              ),
            )
          ],
        ),
      ),
    );
  }
}
