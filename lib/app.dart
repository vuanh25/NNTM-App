import 'package:application_flutter/route_generator.dart';
import 'package:application_flutter/screens/onboarding/onboarding.dart';
import 'package:application_flutter/utils/theme/theme.dart';
import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ProgressHud(
      isGlobalHud: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.dartTheme,
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: Get.key,
        initialRoute: '/',
      ),
    );
  }
}
