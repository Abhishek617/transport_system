import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/screens/permission.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<String> title = [AppStrings.kFreight,AppStrings.kTransparent,AppStrings.kTrusted];
  List<String> desc = [AppStrings.kFreightDesc,AppStrings.kTransparentDesc,AppStrings.kTrustedDesc];

  List<Widget> generateListCustomTabs() {
    return List.generate(
      3,
          (index) => Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: <Widget>[
            // const SizedBox(height: 40),
            Image.asset(
              "assets/images/intro${index+1}.png",
              width: MediaQuery.of(context).size.width,
              height: 400.0,
            ),
            // const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Text(
                title[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.kLightBlue,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto-Regular',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Text(
                desc[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.kGrey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Roboto-Regular',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kWhite,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: IntroSlider(
                showDoneBtn: false,
                showNextBtn: false,
                showSkipBtn: false,
                backgroundColorAllSlides: Colors.white,
                listCustomTabs: generateListCustomTabs(),
                colorDot: Colors.grey,
                colorActiveDot: Colors.blue,
                sizeDot: 13.0,
                hideStatusBar: true,
                verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
              ),
            ),
            const SizedBox(height: 20,),
            AppButtons().kElevatedButton(
                title: AppStrings.kREGISTER,
                context: context,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Permission()),);

                  print('register');}
            )
          ],
        ),
      ),
    );
  }
}
