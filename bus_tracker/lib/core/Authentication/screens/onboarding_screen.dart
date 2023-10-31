import 'package:bus_tracker/common_widgets/Buttons/button_one.dart';
import 'package:bus_tracker/constants/custom_fonts.dart';
import 'package:bus_tracker/core/Authentication/controllers/onboarding_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

  final controller = OnboardingScreenController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            onPageChangeCallback: controller.onPageChangeMethod,
            liquidController: controller.liqcontroller,
            pages: [
              Container(
                color: Colors.lightBlue,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ob1.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Effortless Bus Tracking',
                      style: CustomTextStyle.t2(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Track your bus in real-time, plan your commute hassle-free with our intuitive app. Say goodbye to uncertainties, hello to convenience.',
                        style: CustomTextStyle.t3(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ob2.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'College Commute, Simplified',
                      style: CustomTextStyle.t2(context)
                          .copyWith(color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Effortless college commute! Get assigned a specific bus number, track it in real-time, and streamline your journey with our user-friendly app. Never miss a ride, save time, and arrive hassle-free.',
                        style: CustomTextStyle.t3(context)
                            .copyWith(color: Colors.blue),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/ob3.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Empowering Your Travel',
                      style: CustomTextStyle.t2(context),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Seize your travel experience! Our app offers precise bus tracking for punctual arrivals. College authorities gain transparent bus management. Enjoy a seamless journey, empowered by technology.',
                        style: CustomTextStyle.t3(context),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    Button1(buttonText: 'Start your Journey', onPressed: () {}),
                  ],
                ),
              ),
            ],
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            ignoreUserGestureWhileAnimating: true,
            enableLoop: false,
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                duration: const Duration(milliseconds: 200),
                activeIndex: controller.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Colors.black,
                  dotHeight: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
