import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/screens/location_permission.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class Permission extends StatefulWidget {
  const Permission({Key? key}) : super(key: key);

  @override
  State<Permission> createState() => _PermissionState();
}

class _PermissionState extends State<Permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                AppStrings.kTransport,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColors.kLightBlue),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                AppStrings.kNeedsPermission,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto-Regular'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 25,
                    color: AppColors.kLightBlue,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    AppStrings.kStoreLocation,
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.kLightBlue,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto-Regular'),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.kStoreLocationDesc,
                style: TextStyle(fontSize: 15, color: AppColors.kGrey),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(Icons.call, size: 25, color: AppColors.kLightBlue),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    AppStrings.kManageCalls,
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.kLightBlue,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto-Regular'),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.kManageCallsDesc,
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.kGrey,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto-Regular'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(Icons.call, size: 25, color: AppColors.kLightBlue),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    AppStrings.kStoreCallLogs,
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColors.kLightBlue,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Roboto-Regular'),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.kStoreCallLogsDesc,
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.kGrey,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto-Regular'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1.5,
              ),
              const Text(
                AppStrings.kPolicy,
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.kGrey,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto-Regular'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.kAgree,
                style: TextStyle(
                    fontSize: 15,
                    color: AppColors.kGrey,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Roboto-Regular'),
              ),
              const SizedBox(
                height: 20,
              ),
              AppButtons().kElevatedButton(
                  title: AppStrings.kAGREE,
                  context: context,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LocationIcon()),
                    );
                  }),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                  height: 50,
                  width: 330,
                  child: Center(
                    child: Text(
                      AppStrings.kDisagree,
                      style: TextStyle(
                          color: AppColors.kGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Roboto-Regular'),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
