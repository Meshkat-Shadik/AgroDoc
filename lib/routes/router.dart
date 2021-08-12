import 'package:agro_doc/presentation/screens/home_screen.dart';
import 'package:agro_doc/presentation/screens/inspect_page.dart';
import 'package:agro_doc/presentation/screens/splash_screen.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: HomeScreen),
    AutoRoute(page: InspectPage),
  ],
)
class $AppRouter {}
