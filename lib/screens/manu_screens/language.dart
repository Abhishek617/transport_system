import 'package:flutter/material.dart';

import '../../custom_widgets/appButtons.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String? language; //no radio button will be selected
  //int groupValue = 0; // First radio is checked
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Language", style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 200,
              width: double.infinity, decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/lang.jpeg'),
                fit: BoxFit.contain,
              ),
              //shape: BoxShape.circle,
            ),
            ),
            RadioListTile(
              title: Text("English"),
              value: "english",
              groupValue: language,
              onChanged: (value){
                setState(() {
                  language = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Hindi"),
              value: "hindi",
              groupValue: language,
              onChanged: (value){
                setState(() {
                  language = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Kannada"),
              value: "kannada",
              groupValue: language,
              onChanged: (value){
                setState(() {
                  language= value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Tamil"),
              value: "tamil",
              groupValue: language,
              onChanged: (value){
                setState(() {
                  language = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Telugu"),
              value: "telugu",
              groupValue: language,
              onChanged: (value){
                setState(() {
                  language = value.toString();
                });
              },
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: AppButtons().kElevatedButton(title: "SUBMIT", context: context, onPressed: (){}),
            )
          ],
        ),
      ),
    );
  }
}
