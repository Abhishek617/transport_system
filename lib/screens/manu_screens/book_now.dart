
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/utils/appColors.dart';
class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  File? image;
  String? language; //no radi// o button will be selected

  int? selectedIndexes;
  final List<String> _wordName = [
    "7 - 10 tons",
    "10 - 20 tons",
    "20 - 25 tons",
    "25 - 30 tons",
    "30 - 55 tons",
    "35 - 40 tons",
    "40 - 45 tons",
  ];



  TextEditingController loadingPoint = TextEditingController();
  TextEditingController unload = TextEditingController();
  TextEditingController material = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          title: const Text("Post Load", style: TextStyle(color: Colors.black),),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
        ),
      body: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.grey[350],
            child: Padding(
              padding: const EdgeInsets.only(left: 60, top: 10),
              child: Text("Load Deatils",style: TextStyle(fontSize:20,color: AppColors.kBlack),),
            ),
          ),
          _customeText(loadingPoint, 'Loading point'),
          _customeText(unload,"Unloading Point"),
          _customeText(material, "Material"),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:15,horizontal: 15),
            child: AppButtons().kElevatedButton(title: 'SUBMIT', context: context, onPressed: (){}),
          ),


    //   GridView.builder(
    //     scrollDirection: Axis.vertical,
    //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //       crossAxisSpacing: 3,
    //       mainAxisSpacing: 2,
    //       childAspectRatio: (16 / 8),
    //     ),
    //     itemCount: _wordName.length,
    //     itemBuilder: (context, index) {
    //       return GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               if(selectedIndexes!.contains(index)){
    //                 selectedIndexes.remove(index);
    //               } else {
    //                 selectedIndexes.remove(index);
    //               }
    //               showButton = true;
    //             });
    //           },
    //           child: Container(
    //           margin: EdgeInsets.all(10),
    //       decoration: BoxDecoration(
    //       color: selectedIndexes  == index
    //       ? Color(0xffDEB988).withOpacity(0.2)
    //           : Color(0xffF4F4F6).withOpacity(0.5),
    //       borderRadius: BorderRadius.circular(5.0),
    //       border: Border.all(
    //       color: selectedIndex == index
    //       ? Color(0xffDEB988)
    //           : Colors.transparent,
    //       width: 0.5),
    //       image: const DecorationImage(
    //       image: AssetImage('assets/images/bg2.png'),
    //       fit: BoxFit.cover,
    //       ),
    //       ),
    //       child: Row(
    //       children: [
    //       Flexible(
    //       child: Center(
    //       child: Text(
    //       _wordName[index].toUpperCase(),
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //       color: selectedIndex == index
    //       ? Color(0xffDEB988)
    //           : Colors.black,
    //       fontWeight: selectedIndex == index
    //       ? FontWeight.bold
    //           : FontWeight.normal,
    //       fontFamily: "Poppins",
    //       ),
    //       )
    //       )
    //       )
    //       ]
    //       )
    //           )
    //       );
    //     }
    //
    //
    //
    //   ),
    //   ]
    // )
    ]
      )
      );
  }

  Widget _texts(String name){
    return Text(name, style: TextStyle(fontSize: 19),);
  }

  Widget _customeText(TextEditingController controller, String texts){
    return // Note: Same code is applied for the TextFormField as well
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: // Note: Same code is applied for the TextFormField as well
        TextField(
          controller: controller,
          decoration: new InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)),
              //hintText: 'Tell us about yourself',
              labelText: texts,
             ),
        ),
      );


  }

}
