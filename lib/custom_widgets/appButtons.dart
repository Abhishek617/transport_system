import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

import '../utils/device_utils.dart';

class AppButtons {
  Widget kElevatedButton(
      {required String title,
      required BuildContext context,
      required Function() onPressed}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kBlue,
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: onPressed,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: DeviceUtils.getScaledHeight(context, 0.07),
          // decoration: const BoxDecoration(
          //     color: AppColors.kLightGreen,
          //     borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  color: AppColors.kWhite,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
        ));
  }

  Widget kElevatedButtonwithIcon(
      {required String title,
      required BuildContext context,
      required IconData icon,
      required Function() onPressed}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kBlue,
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: onPressed,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 60,
          // decoration: const BoxDecoration(
          //     color: AppColors.kLightGreen,
          //     borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30.0,
              ),
              const SizedBox(width: 10,),
              Text(
                 title,
                style: const TextStyle(
                    color: AppColors.kWhite,
                    fontFamily: 'Roboto-Regular',
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ],
          ),
        ));
  }

  Widget kTextFormField(
      {required TextEditingController controller,
      obscureText = false,
      String? hintText,
      String? labelText,
      required TextInputType keyboardType,
      textAlign = TextAlign.start,
      required TextInputAction textInputAction}) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        cursorColor: AppColors.kGreen,
        textAlign: textAlign,
        style: const TextStyle(
            color: AppColors.kBlack,
            fontFamily: 'Roboto-Regular',
            fontWeight: FontWeight.normal,
            fontSize: 20),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kBlack.withOpacity(0.4)),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kLightBlue),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kBlack.withOpacity(0.4)),
              borderRadius: const BorderRadius.all(Radius.circular(5))),
          labelText: labelText,
          labelStyle: TextStyle(
              color: AppColors.kBlack.withOpacity(0.5),
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.w500,
              fontSize: 20),
          hintText: hintText,
          helperStyle: const TextStyle(
              color: AppColors.kLightBlue,
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
    );
  }

  Future<bool?> kToast(String msg) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
