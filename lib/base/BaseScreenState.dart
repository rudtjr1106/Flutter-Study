import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BaseScreenState<W extends StatefulWidget, P extends ChangeNotifier> extends State<W> {
  bool _initial = false;

  @override
  void initState() {
    super.initState();
  }

  void initView(P provider) {}

  @override
  Widget build(BuildContext context) {
    P provider = context.watch<P>();
    if(!_initial) {
      _initial = true;
      initView(provider);
    }

    return Scaffold(
      body: buildBody(context, provider), // 하위 위젯에게 위임
    );
  }

  Widget buildBody(BuildContext context, P provider);

  @override
  void dispose() {
    super.dispose();
  }
}
