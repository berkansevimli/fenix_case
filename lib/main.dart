import 'dart:io';
import 'package:fenix_interview/core/services/locator.dart';
import 'package:fenix_interview/ui/size_config.dart';
import 'package:fenix_interview/ui/theme.dart';
import 'package:fenix_interview/view/screens/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyHttpoverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}


Future<void> main() async {
  HttpOverrides.global = new MyHttpoverrides();
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: lightTheme(),
    );
  }
}
