import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class OtpVerification extends StatefulWidget {
  final String mobileNo;
  const OtpVerification({Key? key, required this.mobileNo}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final TextEditingController _otpController = TextEditingController();

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
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
            Text(
              widget.mobileNo,
              style: const TextStyle(
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
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: AppButtons().kElevatedButton(
                  title: AppStrings.kCONTINUE,
                  context: context,
                  onPressed: () {
                    if(_otpController.text.isNotEmpty){
                      print('if condition');
                    }
                    else{
                      print('else condition');
                      AppButtons().kToast(AppStrings.kEnterOTP);
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
