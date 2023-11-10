import 'package:bus_tracker/core/Authentication/screens/login/login_screen.dart';
import 'package:bus_tracker/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    initialization();
    super.initState();
  }

  void initialization() async {
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(milliseconds: 300));
    print('ready in 2...');
    await Future.delayed(const Duration(milliseconds: 200));
    print('ready in 1...');
    await Future.delayed(const Duration(milliseconds: 100));
    print('go!');
    FlutterNativeSplash.remove();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
