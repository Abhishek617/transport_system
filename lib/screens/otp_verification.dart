import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            const Text(
              AppStrings.kReceivingOTP,
              style: TextStyle(
                  fontSize: 30,
                  color: AppColors.kLightBlue,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Regular'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              AppStrings.kRecieveOTP,
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.kGrey,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto-Regular'),
            ),
            const SizedBox(
              height: 40,
            ),
            AppButtons().kTextFormField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: AppButtons().kElevatedButton(
                  title: AppStrings.kCONTINUE,
                  context: context,
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
