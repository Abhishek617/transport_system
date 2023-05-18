import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../../custom_widgets/appButtons.dart';

class Document extends StatefulWidget {
  const Document({Key? key}) : super(key: key);

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  File? _panImage;
  String extractedPanText = '';
  String panNumber = '';

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
              Text(panNumber,
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
                      GestureDetector(
                        onTap: _pickImage,
                        child: Container(
                          height: 90,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: (_panImage != null)
                              ? Image(
                            image: FileImage(_panImage!),
                            // fit: BoxFit.fill,
                          )
                              : Text('No image selected'),
                        ),
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
              Divider(thickness: 3, color: Colors.grey,),
              SizedBox(height: 32,),
              AppButtons().kElevatedButton(
                  title: "SUBMIT", context: context, onPressed: () {})
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

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _panImage = File(pickedFile.path);
      });
    }
    print('_imageFile: ${_panImage!.path}');
    if (_panImage!.path.isNotEmpty) {
      recognizedText(_panImage!.path);
    }
    else { // Get.snackbar("Something went wrong", "Image is not selected",
      //     backgroundColor: kSnackErrorBackground,
      //     colorText: kPrimaryLightColor);}
    }
  }

  Future<void> recognizedText(String pickedImage) async {
    print('recognizedText');
    if (pickedImage == null) {
      print('recognizedText if');
      // Get.snackbar("Error", "image is not selected",
      //     backgroundColor: Colors.redAccent, colorText: kPrimaryLightColor);
    } else {
      print('recognizedText else');
      extractedPanText = '';
      var textRecognizer = GoogleMlKit.vision.textRecognizer();
      final visionImage = InputImage.fromFilePath(pickedImage);
      try {
        var visionText = await textRecognizer.processImage(visionImage);
        for (TextBlock textBlock in visionText.blocks) {
          for (TextLine textLine in textBlock.lines) {
            for (TextElement textElement in textLine.elements) {
              extractedPanText = extractedPanText + textElement.text + ' ';
            }
            extractedPanText = extractedPanText + " \n";
          }
        }
      } catch (e) {
        print('niti error: ${e.toString()}');
        // Get.snackbar("File Error", e.toString(),
        //     backgroundColor: Colors.redAccent, colorText: kPrimaryLightColor);
      }
      // print('data: $extractedText');
      String para = extractedPanText;
      print('para: \n$para');
      String paragraph =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium 1234 5678 9012 3456';
      setState(() {
        panNumber = extract16DigitNumber(para);
      });
      print('number niti: $panNumber');
      // textController?.text=extractedText.value;
      // update();
    }
  }

  String extract16DigitNumber(String text) {
    // Regular Expression for License Number
    RegExp regExp = RegExp(r'([A-Z]{2}|[A-Z]{3})-\d{2}-\d{11}');
    RegExp regExp11 = RegExp(r'([A-Z]{2}|[A-Z]{3})\d{2} \d{11}');
    RegExp regExp22 = RegExp(r'([A-Z]{2}|[A-Z]{3})-\d{10}');
    RegExp regExp33 = RegExp(r'[A-Z]{2}/s?/d{2}/s?[A-Z]{2}/s?/d{4}');
    // RegExp(r'[A-Z]{2}\s*[0-9]{2}\s*[A-Z]{2}\s*[0-9]{4}');
    // RegExp(r'([A-Z]{2}|[A-Z]{3})\d{2}[A-Z]{2}\d{4}'); // Regular Expression for RC Book Number
    RegExp regExp44 =
    RegExp('[A-Z]{5}[0-9]{4}[A-Z]{1}'); // Regular Expression for PAN Card
    RegExp regExp55 =
    RegExp(r'\d{4} \d{4} \d{4}'); // Regular Expression for Aadhar Card
//     text.contains(regExp);
    print('text: ${text.contains(regExp)}');
    print('text11: ${text.contains(regExp11)}');
    print('text22: ${text.contains(regExp22)}');
    print('text33: ${text.contains(regExp33)}');
    print('text44: ${text.contains(regExp44)}');
    print('text55: ${text.contains(regExp55)}');
    Match? match;
    if (text.contains(regExp11)) {
      print('if match');
      match = regExp11.firstMatch(text);
    } else if (text.contains(regExp22)) {
      print('if 22 match');
      match = regExp22.firstMatch(text);
    } else if (text.contains(regExp33)) {
      print('if 33 match');
      match = regExp33.firstMatch(text);
    } else if (text.contains(regExp44)) {
      print('if 44 match');
      match = regExp44.firstMatch(text);
    } else if (text.contains(regExp55)) {
      print('if 55 match');
      match = regExp55.firstMatch(text);
    } else {
      print('else match');
      match = regExp.firstMatch(text);
    }
    print('regExp: $match');
    print('match?.group(0): ${match?.group(0)}');
    // print('regExp11: ${regExp11.firstMatch(text)}');
    // match = regExp.firstMatch(text);
    return match?.group(0) ?? '';
  }
}

