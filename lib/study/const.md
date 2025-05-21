# 1. Const   
- - -   
flutter에서 rebuild될 때 특정 위젯에는 rebuild를 막도록 하고 싶으면 어떻게 해야할 지 궁금했다.   
그래서 검색해본 결과 간단하게 위젯 앞에 const를 붙이면 된다고 한다.   

추가로 위젯 생성은 다음과 같다
```
import 'package:flutter/material.dart';
import 'package:likelion_quiz/constants.dart';
import 'package:likelion_quiz/palette.dart';

/// [MainBtn] is a custom widget that is used to create a button with a custom width, height, and background color.
class MainBtn extends StatelessWidget {
  const MainBtn({
    super.key,
    this.width,
    this.height,
    this.backgroundColor,
    required this.label,
    required this.onTap,
  });

  /// The width of the button.
  final double? width;

  /// The height of the button.
  final double? height;

  /// The background color of the button.
  final Color? backgroundColor;

  /// The label of the button.
  final String label;

  /// The onTap function of the button.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width ?? 250,
        height: height ?? 56,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? Palette.btnBackground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Constants.radius),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Gmarket',
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ));
  }
}
```   
같이 팀플에 참여하신 동한형님의 코드를 참고하였다