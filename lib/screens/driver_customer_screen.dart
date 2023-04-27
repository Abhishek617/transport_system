import 'package:flutter/material.dart';
import 'package:royal_cargo/utils/appColors.dart';

class Driver_Customer extends StatefulWidget {
  const Driver_Customer({Key? key}) : super(key: key);

  @override
  State<Driver_Customer> createState() => _Driver_CustomerState();
}

class _Driver_CustomerState extends State<Driver_Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
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
            child: Center(child: Text("Driver",style: TextStyle(fontSize: 25),))
          ),

          SizedBox(height: 20,),
          Column(
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
                  child: Center(child: Text("Customer",style: TextStyle(fontSize: 25),))
              ),
            ],
          ),

        ],
        ),
      ),
    );
  }
  // Widget customer_driverButton({String? text, String? image}){
  //   return Column(
  //     children: [
  //       Container(
  //         height: 100,
  //         width: 100,
  //         //color: Colors.grey,
  //         child: Image.asset(image!),
  //       ),
  //       Text(text!)
  //     ],
  //   );
  // }

}
