import 'package:flutter/material.dart';
import 'package:royal_cargo/custom_widgets/appButtons.dart';
import 'package:royal_cargo/screens/my_loads.dart';
import 'package:royal_cargo/utils/appColors.dart';

import '../../utils/device_utils.dart';
import '../manu_screens/book_now.dart';
import '../manu_screens/document_screen.dart';
import '../manu_screens/language.dart';
import '../manu_screens/load_balance_screen.dart';
import '../manu_screens/profile_screen.dart';
GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
       drawer: navDrawer(),
      // appBar: AppBar(x
      //   backgroundColor: Colors.transparent,
      //   title: Text(""),
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Row(
                //   children: [
                //   Container(
                //     height: 50,
                //     width: 50,
                //     decoration: BoxDecoration(
                //       color: Colors.grey,
                //       borderRadius: BorderRadius.circular(50)
                //     ),
                //
                //   )
                //   ],
                // ),



                Container(
                  height: DeviceUtils.getScaledHeight(context, 0.30),
                  color: AppColors.kBlue,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                           navDrawer();
                           _scaffoldState.currentState!.openDrawer();
                          },
                            child: const Icon(Icons.menu_outlined,color: Colors.white,size:30,)),
                        helpcustome(),

                      ]
                    ),
                  ),
                ),

                Positioned(
                  top: 80,
                    left: 35,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.kGrey,
                          // backgroundImage: AssetImage('assets/images/cat3.png'),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Abhishek Singh", style: TextStyle(fontSize: 19, color: AppColors.kWhite,fontWeight: FontWeight.w700,
                              fontFamily: 'Roboto-Regular',),),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                const Icon(Icons.star,color: Colors.white,),
                                const Text(" Not Enough Rating",style: TextStyle(fontSize: 14, color: AppColors.kWhite,fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto-Regular',),),
                                const SizedBox(width: 10,),
                                const SizedBox(height: 5,),
                                const Text("VERIFIED",style: TextStyle(fontSize: 15, color: AppColors.kLightBlue,fontWeight: FontWeight.w700,
                                  fontFamily: 'Roboto-Regular',),),
                                const SizedBox(width: 5,),
                                const Icon(Icons.verified_user, color: AppColors.kLightBlue,size: 16,),
                                const SizedBox(width: 25,),
                                InkWell(
                                    onTap: (){
                                    },
                                    child: const Icon(Icons.navigate_next, color: Colors.white,))
                              ],
                            )
                          ],
                        )
                      ],
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 170),
                  child: Card(
                    elevation:5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50)
                      ),
                      height: DeviceUtils.getScaledHeight(context, 0.18),
                      width: DeviceUtils.getScaledHeight(context, 0.60),

                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Your activity for this month", style: TextStyle(color: AppColors.kGrey, fontSize: 15),),
                          ),
                          const SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(left: 6, right: 6),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(Icons.ice_skating),
                                            Text(" 0", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),)
                                          ],
                                        ),

                                        const Text("Loads")
                                      ],
                                    ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.remove_red_eye),
                                          Text(" 0", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      const Text("Load")
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(Icons.call),
                                          Text(" 0", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),)
                                        ],
                                      ),
                                      const Text("Call Receive")
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(right: 0),
                          //   child: Padding(
                          //     padding: const EdgeInsets.only(left: 10, right: 10),
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //       children: [
                          //        // Text("Loads"),
                          //         Text("View"),
                          //         Text("Call")
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          //SizedBox(height: 19,),
                          const Spacer(),
                          Container(
                            height: DeviceUtils.getScaledHeight(context, 0.04),
                            width: double.infinity,
                            color: Colors.blue[200],
                            child: const Center(child: Text("53 calls were received by transporter in Ahmedabad yesterday", style: TextStyle(color: AppColors.kGrey,fontSize: 11,fontWeight: FontWeight.normal,fontFamily: 'Roboto-Regular'),)),
                          ),
                        ],
                      ),

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5,
                child: SizedBox(
                  height: DeviceUtils.getScaledHeight(context, 0.20),
                  width: DeviceUtils.getScaledHeight(context, 0.60),

                  child: Padding(

                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Documents Rejected", style: TextStyle(fontSize:19, color: Colors.black, fontWeight: FontWeight.bold),),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Please re-upload documents", style: TextStyle(fontSize: 15),),
                                const SizedBox(height: 10,),
                                ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:  MaterialStateProperty.all<Color>(Colors.black),
                                    ),
                                    onPressed: (){}, child: const Text("Upload Document"))


                              ],
                            ),
                            const CircleAvatar(
                              radius: 30,
                              backgroundColor: AppColors.kGrey,
                              // backgroundImage: AssetImage('assets/images/cat3.png'),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(right: 30, ),
                            //   child: Container(
                            //     height: DeviceUtils.getScaledHeight(context, 0.10),
                            //     width: DeviceUtils.getScaledWidth(context, 0.20),
                            //
                            //     decoration: BoxDecoration(
                            //         color: AppColors.kGrey,
                            //       borderRadius: BorderRadius.circular(100)
                            //     ),),
                            // ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Post new load or repost old',style: TextStyle(color: AppColors.kBlack, fontSize: 21,fontWeight: FontWeight.bold),),
            ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButtons().kElevatedButtonwithIcon(
                title: "Post New Load",
                context: context,
                icon: (Icons.telegram_sharp),
                onPressed: (){}),
          ),
            const Divider(thickness: 2,),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Icon(Icons.star_border),
                  SizedBox(width: 10,),
                  Text("Star Transports on Royal Cargo Runner", style: TextStyle(color: AppColors.kBlack, fontSize: 16, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: DeviceUtils.getScaledHeight(context, 0.40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fire_truck_sharp),
            label: ' My Load',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Tracking',
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (int index) {
          switch (index) {
            case 0:
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyLoads()));
            // only scroll to top when current index is selected.
            //   if (_selectedIndex == index) {
            //     _homeController.animateTo(
            //       0.0,
            //       duration: const Duration(milliseconds: 500),
            //       curve: Curves.easeOut,
            //     );
            //   }
              break;
            case 2:
              // Navigator.push(context, MaterialPageRoute(builder: (context)=> const BookNow()));
// showModal(context);
              break;
          }
          setState(
                () {
             // _selectedIndex = index;
            },
          );
        },
      ),
    );
  }
  Widget navDrawer(){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),);

            },
            child: DrawerHeader(
              child: Row(
            children: [
        Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
                  color: Colors.grey
            ),
        ),
              const SizedBox(width:15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Dial2web",style: TextStyle(color: AppColors.kBlack,fontSize: 16),),
                  Text("9054593510",style: TextStyle(color: AppColors.kBlack,fontSize: 16))
                ],
              ),


        ],
      ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.edit_document),
            title: const Text('Your Documents'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>const Document()),)
          },
          ),
          ListTile(
            leading: const Icon(Icons.border_color_outlined),
            title: const Text('Book Now'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const BookNow()),)
            },
          ),


          ListTile(
            leading: const Icon(Icons.cloud_download_rounded),
            title: const Text('Load Balance'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const Balance()),)

            },
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Tracking Days Balance'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('Language'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const Language()),)
            },
          ),

          ListTile(
            leading: const Icon(Icons.safety_check_outlined),
            title: const Text('For Fraud Prevention'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.login_outlined),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],

      ),


    );
  }

  helpcustome(){
    return Container(
      height: 30,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.black)),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.call,
              color: AppColors.kBlue,
              size: 15,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "Help  ",
              style: TextStyle(
                  color: AppColors.kBlue,
                  fontFamily: 'Roboto-Regular',

                  fontSize: 15),
            ),
          ],
        ),
      ),
    );

  }

}
