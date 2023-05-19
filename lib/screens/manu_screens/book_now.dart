import 'dart:io';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/utils/appColors.dart';
enum Type {Single, Multiple}
class BookNow extends StatefulWidget {
  const BookNow({Key? key}) : super(key: key);

  @override
  State<BookNow> createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  File? image;
  String? language; //no radi// o button will be selected

  int? selectedIndex;
  final List<String> _wordName = [
    "7 - 10 tons",
    "10 - 20 tons",
    "20 - 25 tons",
    "25 - 30 tons",
    "30 - 55 tons",
    "35 - 40 tons",
    "40 - 45 tons",
    "45 ++ tons"
  ];

  TextEditingController loadingPoint = TextEditingController();
  TextEditingController unload = TextEditingController();
  TextEditingController material = TextEditingController();
  Type _type = Type.Single;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "Post Load",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(children: [
          Container(
            height: 40,
            width: double.infinity,
            color: AppColors.kGrey.withOpacity(0.5),
            child: const Padding(
              padding: EdgeInsets.only(left: 60, top: 10),
              child: Text(
                "Load Details",
                style: TextStyle(fontSize: 20, color: AppColors.kBlack),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Radio<Type>(value: Type.Single, groupValue: _type,
                      activeColor: AppColors.kLightGreen,
                        onChanged: (Type? value) {
                          setState(() {
                            _type = value!;
                          });
                          print('Type: ${_type.name}');
                        },),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Single',
                          style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Loading & Unloading',
                          style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio<Type>(value: Type.Multiple, groupValue: _type,
                      activeColor: AppColors.kLightGreen,
                      onChanged: (Type? value) {
                        setState(() {
                          _type = value!;
                        });
                        print('Type: ${_type.name}');
                      },),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Multiple',
                          style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Loading & Unloading',
                          style: TextStyle(
                            fontFamily: 'Roboto-Regular',
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ]),
          _customeText(loadingPoint, 'Loading point'),
          _customeText(unload, "Unloading Point"),
          _customeText(material, "Material"),
        //  const Spacer(),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 2,
                  childAspectRatio: (16 / 8),
                ),
                itemCount: _wordName.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          print("now selected ===>>> $index");
                          selectedIndex = index;
                          //showButton = true;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Color(0xffDEB988).withOpacity(0.2)
                              : Color(0xffF4F4F6).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                              color: selectedIndex == index
                                  ? Color(0xffDEB988)
                                  : Colors.grey,
                              width: 0.5),
                          // image: const DecorationImage(
                          //   image: AssetImage('assets/images/noData.png'),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        child: Row(
                            children: [
                              Flexible(
                                  child: Center(
                                      child: Text(
                                        _wordName[index].toUpperCase(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: selectedIndex == index
                                              ? Color(0xffDEB988)
                                              : Colors.black,
                                          fontWeight: selectedIndex == index
                                              ? FontWeight.bold
                                              : FontWeight.normal,
                                          fontFamily: "Poppins",
                                        ),
                                      )
                                  )
                              )
                            ]
                        ),
                      )
                  );
                }
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: AppButtons().kElevatedButton(
                title: 'SUBMIT', context: context, onPressed: () {}),
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

  Widget _texts(String name) {
    return Text(
      name,
      style: const TextStyle(fontSize: 19),
    );
  }

  Widget _customeText(TextEditingController controller, String texts) {
    return // Note: Same code is applied for the TextFormField as well
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButtons().kTextFormField(
                controller: controller,
                keyboardType: TextInputType.text,
                labelText: texts,
                textInputAction: TextInputAction.next));
  }
}
