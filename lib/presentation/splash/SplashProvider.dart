import 'package:flutter/cupertino.dart';
import 'package:studyf/base/BaseProvider.dart';

class SplashProvider with ChangeNotifier implements BaseProvider {
  var counter = 0;

  void increment(){
    counter++;
    notifyListeners();
  }
}