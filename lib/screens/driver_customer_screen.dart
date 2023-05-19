import 'package:flutter/material.dart';
import 'package:royal_cargo/screens/registration_screen.dart';
import 'package:royal_cargo/utils/appStrings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DriverCustomer extends StatefulWidget {
  const DriverCustomer({Key? key}) : super(key: key);

  @override
  State<DriverCustomer> createState() => _DriverCustomerState();
}

class _DriverCustomerState extends State<DriverCustomer> {
  // late SharedPreferences pref;
  @override
  void initState() {
    super.initState();
    // initPrefence();
  }

  void initPrefence() async{
    print('initPreference');
    final pref = await SharedPreferences.getInstance();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              // setState(() async {
              //    pref.setString(AppStrings.kDriverPref,AppStrings.kDriverPref);
              //   print('Driver Pref: ${pref.get(AppStrings.kDriverPref)}');
              // });
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration()));
            },
            child: Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.blue)
              ),
              child: const Center(child: Text("Driver",style: TextStyle(fontSize: 25),))
            ),
          ),
          const SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration()));
            },
            child: Column(
              children: [
                Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue)
                    ),
                    child: const Center(child: Text("Customer",style: TextStyle(fontSize: 25),))
                ),
              ],
            ),
          ),

        ],
        ),
      ),
    );
  }
  Widget customer_driverButton({String? text}){
    return Column(
      children: [
        Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.blue)
              //    borderRadius:Radius.circula
            ),
            child: Center(child: Text(text!,style: TextStyle(fontSize: 25),))
        ),
      ],
    );
  }

}
