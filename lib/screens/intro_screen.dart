import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
import 'package:royal_cargo/screens/permission.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
// creating List of Slide objects
// to store data of all intro slides
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    // initializing slides at
    // the runtime of app
    slides.add(

      Slide(
        backgroundImageFit: BoxFit.cover,
        backgroundColor: Colors.white,
        maxLineTitle: 2,
        styleTitle: TextStyle(
          color: Colors.green,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),

        description: "GeeksForGee ks present you the intro_slider"
            "tutorial making your learning phase Easier.",

        styleDescription: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
        marginDescription:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        //backgroundColor: Colors.yellow,
          pathImage: "assets/images/into1.png",
        heightImage: 340,
        widthImage: 400,

        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
       // title: "ok"
      ),
    );

    slides.add(
      Slide(
        backgroundColor: Colors.white,

        backgroundImageFit: BoxFit.contain,
        //title: "Second Slide",
        styleTitle: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description: "Do video call anywhere anytime with this app.",
        styleDescription: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
        pathImage: "assets/images/intro2.png",
        heightImage: 340,
        widthImage: 400,
        //directionColorBegin: Alignment.topRight,
        //directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      Slide(
        backgroundColor: Colors.white,

        backgroundImageFit: BoxFit.contain,

        //title: "Third Slide",
        styleTitle: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),
        description: "Now track the location with this app easily.",
        styleDescription: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),

        pathImage: "assets/images/intro3.png",
        heightImage: 340,
        widthImage: 400,
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 3,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      // List slides
      slides: this.slides,
        backgroundColorAllSlides: Colors.white,
      // Skip button
      renderSkipBtn: TextButton(
          onPressed: () {},
          child: Text(
            "Skip",
            style: TextStyle(fontSize: 20),
          )),

      // Next button
      renderNextBtn: Icon(
        Icons.navigate_next,
        color: Colors.green,
        size: 40.0,
      ),
      // Done button
      renderDoneBtn: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Permission()),);
          },
          child: Text("Done", style: TextStyle(fontSize: 20))),

      // Dot indicator
      colorDot: Colors.grey,
      colorActiveDot: Colors.blue,
      sizeDot: 13.0,

      // Show or hide status bar
      hideStatusBar: true,
      // backgroundColorAllSlides: Colors.white10,
      // Scrollbar
      verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
    );
  }
}
