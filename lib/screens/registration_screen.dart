import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/screens/otp_verification.dart';
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
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 1,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.black)),
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
                      style: TextStyle(
                          color: AppColors.kBlue,
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
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
              AppStrings.kEnterPhn,
              style: TextStyle(
                  color: AppColors.kBlue,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              AppStrings.kPhnNoDesc,
              style: TextStyle(
                  color: AppColors.kBlack,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: mobileNumber,
                obscureText: false,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                cursorColor: AppColors.kGreen,
                // textAlign: textAlign,
                style: const TextStyle(
                    color: AppColors.kBlack,
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.kLightBlue),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.kLightBlue),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.kLightBlue),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
              ),
            ),
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
                    fontSize: 15,
                    color: AppColors.kLightBlue,
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.w500,
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
                title: AppStrings.kCONTINUE,
                context: context,
                onPressed: (){
                    if (mobileNumber.text.isNotEmpty) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OtpVerification(mobileNo: mobileNumber.text,)));
                    } else {
                      AppButtons().kToast(AppStrings.kEnterMobile);
                    }
                })
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
              text: 'By continuing, you agreeing to the ',
              style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w500,
                  color: AppColors.kBlack),
              children: <TextSpan>[
            TextSpan(
                text: 'Terms & Conditions',
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w500,
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
                          fontSize: 15,
                          color: AppColors.kBlue,
                          fontFamily: 'Roboto-Regular',
                          fontWeight: FontWeight.w500,
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
