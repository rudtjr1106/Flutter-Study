import 'package:flutter/cupertino.dart';

class SplashProvider with ChangeNotifier {
  var counter = 0;

  void increment(){
    counter++;
    notifyListeners();
  }
}