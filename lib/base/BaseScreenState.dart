import 'package:flutter/cupertino.dart';

abstract class BaseScreenState<T extends StatefulWidget> extends State<T> {
  @override
  void initState() {
    super.initState();
  }

  void doSomethingShared() {
  }
}
