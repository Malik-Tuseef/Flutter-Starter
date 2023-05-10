import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/routers.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    // if (localStorage.getString('driverName') != null) {
    resolver.next(true);
    // } else {
    //   router.replaceNamed('/auth');
    // }
  }
}

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: Splash.page, path: '/', initial: true, guards: [AuthGuard()]),
      ];
}
