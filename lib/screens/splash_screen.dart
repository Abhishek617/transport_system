import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/new.dart';
import '../network/constants.dart';
import '../network/network.dart';
import '../utils/appColors.dart';
import 'intro_screen.dart';
import 'package:just_audio/just_audio.dart';


AudioPlayer player = AudioPlayer();
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //AudioPlayer audioPlayer = AudioPlayer();

  bool _loading = false;
  List<New> dataList = [];

  // static final _item = MediaItem(
  //   id: 'https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3',
  //   album: "Science Friday",
  //   title: "A Salute To Head-Scratching Science",
  //   artist: "Science Friday and WNYC Studios",
  //   duration: const Duration(milliseconds: 5739820),
  //   artUri: Uri.parse(
  //       'https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg'),
  // );


  // Future<void> playSound() async {
  //   int result = await audioPlayer.play('assets/sound.mp3', isLocal: true);
  //   if (result != 1) {
  //     print('Error playing sound');
  //   }
  // }

  _checkuserLoginStatus() async {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => IntroScreen()));
  }



  _loadData() async {
    setState(() {
      _loading = true;
    });

    String url = getAttendanceLogUrl;


    await Network().deleteLeave(url).then((resp) {
      if (resp.hashCode == 200) {
        dataList.clear();

        // resp.data?.forEach((element) {
        //   dataList.add(element);
        // });

        setState(() {
          _loading = false;
        });
      } else {
        setState(() {
          _loading = false;
        });

      }
    }).catchError((e) {
      print(e);
      setState(() {
        _loading = false;
      });
      customToast(e.toString());
    });
  }

  // AudioPlayer audioPlayer = AudioPlayer();
  //
  // Future<void> playSound() async {
  //   int result = await audioPlayer.play('assets/sound.mp3', isLocal: true);
  //   if (result != 1) {
  //     print('Error playing sound');
  //   }
  // }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    player.setAsset('assets/images/truck.mp3');
    playSound();

    Future.delayed(
      const Duration(
        seconds: 4,
       //
        //
        // milliseconds: 800,
      ),
      () {
        //playSound();
        _checkuserLoginStatus();
      },
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.dispose();
  }

  Function playSound = (){
    player.play();
    return 1;
  };



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Image.asset(
            'assets/images/truck.gif',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }


  Future<bool?> customToast(String msg) {
    return Fluttertoast.showToast(
      msg: msg,
      backgroundColor: Colors.white,
      textColor: AppColors.kGrey,
    );
  }

}
