import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/utils/appColors.dart';

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Load Balance", style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.blueAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    stops: [0.4, 0.7],
                    tileMode: TileMode.repeated,
                  ),
                ),
                 child: Column(
                   children: [
                     const Spacer(),
                     Column(
                       children: [
                         Row(
                           children: [
                             const Text("   0", style: TextStyle(fontSize:35, fontWeight: FontWeight.bold, color: AppColors.kWhite),),const SizedBox(width: 10,),
                             const Text("Loads", style: TextStyle(fontSize:15, fontWeight: FontWeight.bold, color: AppColors.kWhite),),
                             //AppButtons().kElevatedButtonwithIcon(title:"RECHARGE", context: context, icon: , onPressed: onPressed)

                           ],
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left: 30, right: 30),
                           child: Container(
                             height: 44 ,
                             width: double.infinity,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(30)
                             ),
                             child: const Center(child: Text("RECHARGE", style: TextStyle(fontSize: 16),)),
                           ),
                         ),
                         const SizedBox(height: 35,)
                       ],
                     )
                   ],
                 ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
