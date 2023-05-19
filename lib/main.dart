// import 'dart:io';

import 'package:flutter/material.dart';

import 'app/wrapper.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'core/shared_preferences_manager.dart';
import 'injection_container.dart' as di;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dotenv.load(fileName: ".env", mergeWith: Platform.environment);
  await di.init();
  await SharedPreferencesManager.instance.initialize();
  runApp(const Wrapper());
}
