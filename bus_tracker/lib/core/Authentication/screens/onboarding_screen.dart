import 'package:bus_tracker/constants/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(milliseconds: 500));
    print('ready in 2...');
    await Future.delayed(const Duration(milliseconds: 500));
    print('ready in 1...');
    await Future.delayed(const Duration(milliseconds: 500));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bus Trakcer',
          style: CustomTextStyle.appBarTitle(context),
        ),
      ),
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Screen 1'),
                ),
              ),
              Container(
                color: Colors.white,
                child: const Center(
                  child: Text('Screen 2'),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Center(
                  child: Text('Screen 3'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
