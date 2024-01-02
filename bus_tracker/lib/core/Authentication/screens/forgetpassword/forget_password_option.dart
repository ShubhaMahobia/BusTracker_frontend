import 'package:bus_tracker/constants/custom_fonts.dart';
import 'package:flutter/material.dart';

class ForgetPasswordMakeSelection extends StatelessWidget {
  const ForgetPasswordMakeSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Make Selection!',
            style: CustomTextStyle.t1(context)
                .copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Select one of the options given below to reset your password.',
              style: CustomTextStyle.t7(context)),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.mail_outline_outlined,
                    size: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'EMAIL',
                          style: CustomTextStyle.t5(context),
                        ),
                        Text(
                          'Reset via Email Verification',
                          style: CustomTextStyle.t7(context),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.phone,
                    size: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: CustomTextStyle.t5(context),
                        ),
                        Text(
                          'Reset via Phone Verification',
                          style: CustomTextStyle.t7(context),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
