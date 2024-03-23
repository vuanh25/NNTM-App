import 'package:application_flutter/app.dart';
import 'package:application_flutter/get_it.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:get/get_utils/src/platform/platform.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // GetIt
  await configureDependencies();

  /// Web
  if (GetPlatform.isWeb) {
    setPathUrlStrategy();
  }
  runApp(const App());
}
