import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../core/shared_preferences_manager.dart';
import '../globals.dart';
import '../l10n/l10n.dart';
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
      title: "Flutter Starter",
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      locale: Locale(getSupportedLanguageCode()),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (
        Locale? locale,
        Iterable<Locale> supportedLocales,
      ) {
        Locale locale = Locale(getSupportedLanguageCode());
        String? cachedLanguage = SharedPreferencesManager.instance.language;
        if (cachedLanguage != null) {
          locale = Locale(cachedLanguage);
        } else {
          SharedPreferencesManager.instance.setlanguage = locale.languageCode;
        }
        locale = locale;
        return locale;
      },
      routerConfig: _appRouter.config(),
      // routerDelegate: _appRouter.delegate(),
      // routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
