import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:studyf/main.dart';
import 'package:studyf/presentation/splash/SplashProvider.dart';
import 'package:studyf/presentation/splash/splash.dart';

final router = GoRouter(
//  initialLocation: "/splash", 이것 처럼 첫 path가 굳이 /아니여도 된다
    routes: [
      GoRoute(
          path: "/",
          builder: (context, state) {
            return ChangeNotifierProvider(
              create: (_) => SplashProvider(),
              child: const SplashScreen(),
            );
          }
      ),
    ]
);