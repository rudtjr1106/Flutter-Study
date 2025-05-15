import 'package:go_router/go_router.dart';
import 'package:studyf/main.dart';

final router = GoRouter(
    routes: [
      GoRoute(path: "/", builder: (context, state) { return MyHomePage(title: "하이"); } ),
    ]
);