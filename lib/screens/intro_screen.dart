import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/screens/blank_page.dart';
import 'package:royal_cargo/screens/terms_conditions.dart';
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
    executeContectivity (InternetConnectionChecker());

    // Create customized instance which can be registered via dependency injection
    final InternetConnectionChecker customInstance =
    InternetConnectionChecker.createInstance(
      checkTimeout: const Duration(seconds: 1),
      checkInterval: const Duration(seconds: 1),
    );

    // Check internet connection with created instance
    executeContectivity(customInstance);
  }

  Future<void> executeContectivity(
      InternetConnectionChecker internetConnectionChecker,
      ) async {
    // Simple check to see if we have Internet
    // ignore: avoid_print
    print('''The statement 'this machine is connected to the Internet' is: ''');
    final bool isConnected = await InternetConnectionChecker().hasConnection;
    // ignore: avoid_print
    print(
      isConnected.toString(),
    );
    // returns a bool

    // We can also get an enum instead of a bool
    // ignore: avoid_print
    print(
      'Current status: ${await InternetConnectionChecker().connectionStatus}',
    );
    // Prints either InternetConnectionStatus.connected
    // or InternetConnectionStatus.disconnected

    // actively listen for status updates
    final StreamSubscription<InternetConnectionStatus> listener =
    InternetConnectionChecker().onStatusChange.listen(
          (InternetConnectionStatus status) {
        switch (status) {
          case InternetConnectionStatus.connected:
          // ignore: avoid_print
            print('Data connection is available.');
            break;
          case InternetConnectionStatus.disconnected:
          // ignore: avoid_print
            print('You are disconnected from the internet.');
            // Container(
            //   width: 200,
            //   height: 500,
            //   color: Colors.grey,
            //   child: const Center(
            //     child: Text('Please connect to Internet',
            //       style: TextStyle(color: Colors.black,fontSize: 20),),
            //   ),
            // );
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const BlankPage()));
            break;
        }
      },
    );
    // close listener after 30 seconds, so the program doesn't run forever
    // await Future<void>.delayed(const Duration(seconds: 30));
    // await listener.cancel();
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
