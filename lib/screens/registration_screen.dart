import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/utils/appStrings.dart';
import 'package:flutter/gestures.dart';

import '../utils/appColors.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool isChecked = true;
  TextEditingController mobileNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black)
                  //    borderRadius:Radius.circula
                  ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.call,
                      color: AppColors.kBlue,
                      size: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Help  ",
                      style: TextStyle(color: AppColors.kBlue),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              AppStrings.kEnterPhnNo,
              style: TextStyle(color: AppColors.kBlue, fontSize: 36),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.kPhnNoDesc,
              style: TextStyle(color: AppColors.kBlack, fontSize: 21),
            ),
            const SizedBox(
              height: 30,
            ),
            AppButtons().kTextFormField(
                controller: mobileNumber,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.newline),
            const Spacer(),
            Row(
              children: [
                Checkbox(
                  //  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  shape: const CircleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Expanded(
                    child: Text(
                  AppStrings.kAllowWhatsappUpdates,
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.kBlue,
                  ),
                )),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: privacyPolicyLinkAndTermsOfService(),
            ),
            const SizedBox(
              height: 10,
            ),
            AppButtons().kElevatedButton(
                title: AppStrings.kCONTINUE, context: context, onPressed: () {})
          ],
        ),
      ),
    );
  }

  Widget privacyPolicyLinkAndTermsOfService() {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      child: Center(
          child: Text.rich(TextSpan(
              text: 'By continuing, you agree to our ',
              style: const TextStyle(fontSize: 17, color: AppColors.kBlack),
              children: <TextSpan>[
            TextSpan(
                text: 'Terms & Condaitions',
                style: const TextStyle(
                  fontSize: 17,
                  color: AppColors.kBlue,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // code to open / launch terms of service link here
                  }),
            TextSpan(
                text: ' and ',
                style: const TextStyle(fontSize: 18, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Privacy Policy',
                      style: const TextStyle(
                          fontSize: 17,
                          color: AppColors.kBlue,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // code to open / launch privacy policy link here
                        })
                ])
          ]))),
    );
  }
}
