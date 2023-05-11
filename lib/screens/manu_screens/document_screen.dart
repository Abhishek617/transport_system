import 'package:flutter/material.dart';

import '../../custom_widgets/appButtons.dart';

class Document extends StatefulWidget {
  const Document({Key? key}) : super(key: key);

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textName("Address", "VERIFIED"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 130,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              SizedBox(
                height: 10,
              ),
              _textName("Your Selfie", "VERIFIED"),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[300]),
              ),
              SizedBox(height: 20,),
              Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              SizedBox(height: 20,),
              _textName("Pan Card Number", "VERIFIED"),
              SizedBox(
                height: 20,
              ),
              Text("CEYPP137M ",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              SizedBox(
                height: 20,
              ),
              _textName("Pan Card Number", "VERIFIED"),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(height: 5,),
                      Text("Fornt Side", style: TextStyle(fontSize: 17))
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(height: 5,),
                      Text("Back Side", style: TextStyle(fontSize: 17),),

                    ],
                  )
                ],
              ),
              Divider(thickness: 3,color: Colors.grey,),
              SizedBox(height: 32,),
              AppButtons().kElevatedButton(title:"SUBMIT", context: context, onPressed: (){})
            ],
          ),
        ),
      ),
    );
  }

  Widget _textName(String? name, String verifiled) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name!,
            style: TextStyle(
              fontSize: 18,
            )),
        Text(verifiled!, style: TextStyle(fontSize: 18, color: Colors.green))
      ],
    );
  }
}
