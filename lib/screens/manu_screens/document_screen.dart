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
  File? _aadharImage;
  File? _licenseImage;
  File? _rcImage;
  String extractedText = '';
  String panNumber = '';
  String aadharNumber = '';
  String licenseNumber = '';
  TextEditingController _rcController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
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
              const SizedBox(
                height: 20,
              ),
              AppButtons().kTextFormField(
                  controller: _addressController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              _textName("Aadhar Card", "VERIFIED"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => _pickImage('Aadhar Card'),
                child: Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  child: (_aadharImage != null)
                      ? Image(
                          image: FileImage(_aadharImage!),
                          // fit: BoxFit.fill,
                        )
                      : const Center(child: Text('No image selected')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              _textName("License", "VERIFIED"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => _pickImage('License'),
                child: Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300]),
                  child: (_licenseImage != null)
                      ? Image(
                          image: FileImage(_licenseImage!),
                          // fit: BoxFit.fill,
                        )
                      : const Center(child: Text('No image selected')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              _textName("Your Selfie", "VERIFIED"),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[300]),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              _textName("Pan Card Number", "VERIFIED"),
              const SizedBox(
                height: 20,
              ),
              Text(panNumber,
                  style: const TextStyle(
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 20,
              ),
              _textName("Pan Card", "VERIFIED"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => _pickImage('PAN'),
                child: Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: (_panImage != null)
                      ? Image(
                          image: FileImage(_panImage!),
                          // fit: BoxFit.fill,
                        )
                      : const Center(child: Text('No image selected')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              _textName("RC Book", "VERIFIED"),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => _pickImage('RC'),
                child: Container(
                  height: 130,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: (_rcImage != null)
                      ? Image(
                          image: FileImage(_rcImage!),
                          // fit: BoxFit.fill,
                        )
                      : const Center(child: Text('No image selected')),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AppButtons().kTextFormField(
                  controller: _rcController,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 3,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 32,
              ),
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
            style: const TextStyle(
              fontSize: 18,
            )),
        Text(verifiled!,
            style: const TextStyle(fontSize: 18, color: Colors.green))
      ],
    );
  }

  Future<void> _pickImage(String type) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        if (type == 'PAN') {
          _panImage = File(pickedFile.path);
          print('_panImage: ${_panImage!.path}');
        } else if (type == 'Aadhar Card') {
          _aadharImage = File(pickedFile.path);
          print('_aadharImage: ${_aadharImage!.path}');
        } else if (type == 'RC') {
          _rcImage = File(pickedFile.path);
          print('_rcImage: ${_rcImage!.path}');
        } else {
          _licenseImage = File(pickedFile.path);
          print('_licenseImage: ${_licenseImage!.path}');
        }
      });
    }
    if (type == 'PAN') {
      if (_panImage!.path.isNotEmpty) {
        print('_panImage: $_panImage');
        recognizedText(_panImage!.path, type);
      } else {
        // Get.snackbar("Something went wrong", "Image is not selected",
        //     backgroundColor: kSnackErrorBackground,
        //     colorText: kPrimaryLightColor);}
      }
    } else if (type == 'Aadhar Card') {
      if (_aadharImage!.path.isNotEmpty) {
        print('_aadharImage: $_aadharImage');
        recognizedText(_aadharImage!.path, type);
      } else {
        // Get.snackbar("Something went wrong", "Image is not selected",
        //     backgroundColor: kSnackErrorBackground,
        //     colorText: kPrimaryLightColor);}
      }
    } else if (type == 'RC') {
      if (_rcImage!.path.isNotEmpty) {
        print('_rcImage: $_rcImage');
        recognizedText(_rcImage!.path, type);
      } else {
        // Get.snackbar("Something went wrong", "Image is not selected",
        //     backgroundColor: kSnackErrorBackground,
        //     colorText: kPrimaryLightColor);}
      }
    } else {
      if (_licenseImage!.path.isNotEmpty) {
        print('_licenseImage: $_licenseImage');
        recognizedText(_licenseImage!.path, type);
      } else {
        // Get.snackbar("Something went wrong", "Image is not selected",
        //     backgroundColor: kSnackErrorBackground,
        //     colorText: kPrimaryLightColor);}
      }
    }
  }

  Future<void> recognizedText(String pickedImage, String type) async {
    print('recognizedText');
    if (pickedImage == null) {
      print('recognizedText if');
      // Get.snackbar("Error", "image is not selected",
      //     backgroundColor: Colors.redAccent, colorText: kPrimaryLightColor);
    } else {
      print('recognizedText else');
      extractedText = '';
      var textRecognizer = GoogleMlKit.vision.textRecognizer();
      final visionImage = InputImage.fromFilePath(pickedImage);
      try {
        var visionText = await textRecognizer.processImage(visionImage);
        for (TextBlock textBlock in visionText.blocks) {
          for (TextLine textLine in textBlock.lines) {
            for (TextElement textElement in textLine.elements) {
              extractedText = '$extractedText${textElement.text} ';
            }
            extractedText = "$extractedText \n";
          }
        }
      } catch (e) {
        print('niti error: ${e.toString()}');
        // Get.snackbar("File Error", e.toString(),
        //     backgroundColor: Colors.redAccent, colorText: kPrimaryLightColor);
      }
      // print('data: $extractedText');
      String para = extractedText;
      print('para: \n$para');
      String paragraph =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium 1234 5678 9012 3456';
      setState(() {
        if (type == 'PAN') {
          panNumber = extract16DigitNumber(para, type);
          print('panNumber: $panNumber');
        } else if (type == 'Aadhar Card') {
          aadharNumber = extract16DigitNumber(para, type);
          print('aadharNumber: $aadharNumber');
        } else if (type == 'RC') {
          print('rc book');
          // aadharNumber = extract16DigitNumber(para, type);
          // print('aadharNumber: $aadharNumber');
        } else {
          licenseNumber = extract16DigitNumber(para, type);
          print('licenseNumber: $licenseNumber');
        }
      });
      // textController?.text=extractedText.value;
      // update();
    }
  }

  String extract16DigitNumber(String text, String type) {
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
    if (type == 'License') {
      if (text.contains(regExp11)) {
        print('if match');
        match = regExp11.firstMatch(text);
      } else if (text.contains(regExp)) {
        print('else match');
        match = regExp.firstMatch(text);
      } else if (text.contains(regExp22)) {
        print('if 22 match');
        match = regExp22.firstMatch(text);
      }
    } else if (type == 'RC') {
      print('if 33 match');
      match = regExp33.firstMatch(text);
    } else if (type == 'PAN') {
      print('if 44 match');
      match = regExp44.firstMatch(text);
    } else {
      print('if 55 match');
      match = regExp55.firstMatch(text);
    }
    print('regExp: $match');
    print('match?.group(0): ${match?.group(0)}');
    // print('regExp11: ${regExp11.firstMatch(text)}');
    // match = regExp.firstMatch(text);
    return match?.group(0) ?? '';
  }
}
