import 'package:bus_tracker/common_widgets/Buttons/button_two.dart';
import 'package:bus_tracker/constants/custom_fonts.dart';
import 'package:bus_tracker/core/Authentication/controllers/sign_up_controller.dart';
import 'package:bus_tracker/core/Authentication/screens/forgetpassword/forget_password_option.dart';
import 'package:bus_tracker/core/Authentication/screens/signup/sign_up.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.lightBlue,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              bottom: 40,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Heyy, Welcome Back!!!',
                      style: CustomTextStyle.t5(context),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        controller: controller.emailController,
                        style: CustomTextStyle.t6(context),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(8),
                          hintText: 'Email',
                          hintStyle: CustomTextStyle.hintText(context),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: TextField(
                          obscureText: true,
                          style: CustomTextStyle.t6(context),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(8),
                            hintText: 'Password',
                            hintStyle: CustomTextStyle.hintText(context),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Button2(buttonText: 'L O G I N', onPressed: () {}),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 3,
                        color: Colors.lightBlue,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 15),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          //GOOGLE LOGIN IMPLEMENTATION
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/google_svg.svg',
                            height: 42,
                            width: 42,
                          ),
                        ),
                        GestureDetector(
                          //FACEBOOK LOGIN IMPLEMENTATION
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/facebook_svg.svg',
                            height: 42,
                            width: 42,
                          ),
                        ),
                        GestureDetector(
                          //LINKEDIN LOGIN IMPLEMENTATIOn
                          onTap: () {},
                          child: SvgPicture.asset(
                            'assets/icons/linkedin_svg.svg',
                            height: 42,
                            width: 42,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '''Don't have account? ''',
                              style: CustomTextStyle.hintText(context)),
                          TextSpan(
                            //SIGN UP PAGE COMMAND
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => (Get.to(
                                  () => const SignUpScreen(),
                                  transition: Transition.fadeIn)),
                            text: ' SignUp',
                            style: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14,
                              letterSpacing: 0.2,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  context: context,
                                  builder: (context) =>
                                      const ForgetPasswordMakeSelection());
                            },
                            child: Text(
                              'Forget Password?',
                              style: CustomTextStyle.hintText(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
