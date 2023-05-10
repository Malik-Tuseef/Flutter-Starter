import 'package:flutter/material.dart';
import '../routers.dart';
import '../theme/app_theme.dart';

final _appRouter = AppRouter();

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Driver",
      theme: lightTheme(),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
