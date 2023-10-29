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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ob1.jpg'),
                    ),
                    Text(
                      'Effortless Bus Tracking',
                      style: CustomTextStyle.t2(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Experience hassle-free bus tracking with our intuitive app. Know your bus number, track its real-time location, and plan your  commute with precision. Say goodbye to uncertainties and hello to convenience',
                        style: CustomTextStyle.t3(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ob1.jpg'),
                    ),
                    Text(
                      'HHEHEHEHEHEHHEHE',
                      style: CustomTextStyle.t2(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Experience hassle-free bus tracking with our intuitive app. Know your bus number, track its real-time location, and plan your  commute with precision. Say goodbye to uncertainties and hello to convenience',
                        style: CustomTextStyle.t3(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ob1.jpg'),
                    ),
                    Text(
                      'ANWIODANWOIDJAWOPD',
                      style: CustomTextStyle.t2(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Experience hassle-free bus tracking with our intuitive app. Know your bus number, track its real-time location, and plan your  commute with precision. Say goodbye to uncertainties and hello to convenience',
                        style: CustomTextStyle.t3(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            enableLoop: false,
          )
        ],
      ),
    );
  }
}
