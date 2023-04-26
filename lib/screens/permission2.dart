import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class Location_Icon extends StatefulWidget {
  const Location_Icon({Key? key}) : super(key: key);

  @override
  State<Location_Icon> createState() => _Location_IconState();
}

class _Location_IconState extends State<Location_Icon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 160,),
            Container(
              height: 140.0,
              width: 250.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/location.png'),
                  fit: BoxFit.contain,
                ),
                //shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 30,),
            const Text(AppStrings.kLocationPermissionRequired,style: TextStyle(fontSize:24, color: Colors.blue,fontWeight: FontWeight.bold)),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Text(AppStrings.kLocationDesc,style: TextStyle(fontSize:17, color: Colors.grey[600],)),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              child: AppButtons().kElevatedButton(
                  title: "GIVE PERMISSION",
                  context: context,
                  onPressed: (){}),
            )
          ],
        ),
      ),
    );
  }
}
