import 'package:flutter/material.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class AppButtons {
  Widget kElevatedButton(
      {required String title, required BuildContext context}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kBlue,
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
        onPressed: () {},
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
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
                  fontSize: 20),
            ),
          ),
        ));
  }

  Widget kElevatedButtonwithIcon({
    required String title,
    required BuildContext context,
    required IconData icon,
  }) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kBlue,
          elevation: 2,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
        onPressed: () {},
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          // decoration: const BoxDecoration(
          //     color: AppColors.kLightGreen,
          //     borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Center(
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.green,
                  size: 30.0,
                ),
                const SizedBox(
                  width: 20,
                ),
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
          ),
        ));
  }

  Widget kTextFormField(
      {required TextEditingController controller,
      obscureText = false,
      required TextInputType keyboardType,
      required TextInputAction textInputAction}) {
    return Material(
      elevation: 3,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      shadowColor: AppColors.kBlack.withOpacity(0.7),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        cursorColor: AppColors.kGreen,
        style: const TextStyle(
            color: AppColors.kLightBlue,
            fontFamily: 'Roboto-Regular',
            fontWeight: FontWeight.w500,
            fontSize: 20),
        decoration: const InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kLightBlue),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kLightBlue),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kLightBlue),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          hintText: AppStrings.kEnterPhnNo,
          helperStyle: TextStyle(
              color: AppColors.kLightBlue,
              fontFamily: 'Roboto-Regular',
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
      ),
    );
  }
}
