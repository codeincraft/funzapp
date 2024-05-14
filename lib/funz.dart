



import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funz/constants/route_manager.dart';
import 'package:funz/constants/theme_manager.dart';
import 'package:in_app_update/in_app_update.dart';

class FunZApp extends StatefulWidget {
  static void restartApp(BuildContext context) {
    try {
      context.findAncestorStateOfType<_MyAppState>()?.restartApp();
    } catch (e) {
      // manualReportCrash(error: e);
    }
  }

  FunZApp._internal(); // private named constructor
  int appState = 0;
  static final FunZApp instance =
      FunZApp._internal(); // single instance -- singleton

  factory FunZApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<FunZApp> {
  Key _key = UniqueKey();

  void restartApp() {
    if (mounted) setState(() => _key = UniqueKey());
  }

  @override
  void initState() {
    if (Platform.isAndroid && !kDebugMode) {
      InAppUpdate.checkForUpdate().then((value) {
        if (value.updateAvailability != UpdateAvailability.updateAvailable) {
          return;
        }
        InAppUpdate.performImmediateUpdate();
      }).catchError((_) {});
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return  MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: RoutesManager.dashboardRoute,
          theme: getApplicationTheme(),
        
      
    );
  }
}