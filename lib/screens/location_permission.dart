import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/screens/otp_verification.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class LocationIcon extends StatefulWidget {
  const LocationIcon({Key? key}) : super(key: key);

  @override
  State<LocationIcon> createState() => _LocationIconState();
}

class _LocationIconState extends State<LocationIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 160,
            ),
            Container(
              height: 140.0,
              width: 250.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/location.png'),
                  fit: BoxFit.contain,
                ),
                //shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(AppStrings.kLocationPermissionRequired,
                style: TextStyle(
                    fontSize: 24,
                    color: AppColors.kLightBlue,
                    fontWeight: FontWeight.w600)),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Text(AppStrings.kLocationDesc,
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.kGrey,
                  )),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: AppButtons().kElevatedButton(
                  title: AppStrings.kGivePermission,
                  context: context,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpVerification()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
