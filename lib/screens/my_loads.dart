import 'package:flutter/material.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class MyLoads extends StatefulWidget {
  const MyLoads({Key? key}) : super(key: key);

  @override
  State<MyLoads> createState() => _MyLoadsState();
}

class _MyLoadsState extends State<MyLoads> {
  bool loads = false;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     elevation: 0,
    //     automaticallyImplyLeading: false,
    //     backgroundColor: AppColors.kWhite,
    //     title: const Text(AppStrings.kMyLoads,
    //     style: TextStyle(
    //       fontSize: 20,
    //       fontFamily: 'Roboto-Regular',
    //       fontWeight: FontWeight.normal,
    //       color: AppColors.kBlack
    //     ),),
    //     actions: [
    //       loadBalance(),
    //       helpcustome()
    //     ],
    //   ),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: AppColors.kWhite,
          appBar: AppBar(
            title: const Text(
              AppStrings.kLoadBalance,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.normal,
                  color: AppColors.kBlack),
            ),
            backgroundColor: AppColors.kWhite,
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: (AppStrings.kActive),
                ),
                Tab(
                  text: (AppStrings.kPast),
                ),
                // Tab(text: ("Three"),)
              ],
              labelColor: AppColors.kBlack,
            ),
          ),
          body: loads
              ? const TabBarView(children: [
                  Center(
                      child: Text(
                    "One",
                    style: TextStyle(fontSize: 50),
                  )),
                  Center(
                      child: Text(
                    "Two",
                    style: TextStyle(fontSize: 50),
                  )),
                  // Center( child: Text("Three",style: TextStyle(fontSize: 50),))
                ])
              : TabBarView(children: [
                  Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3.5,
                      ),
                      Image.asset('assets/images/noData.png'),
                      const Text(
                        AppStrings.knoActive,
                        style: TextStyle(fontSize: 15),
                      ),
                      const Spacer(),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        color: AppColors.kDarkBlue,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Row(
                            children: [
                              const Text(
                                AppStrings.kPostLoads,
                                style: TextStyle(
                                    color: AppColors.kWhite,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    fontFamily: 'Roboto-Regular'),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border:
                                        Border.all(color: AppColors.kWhite)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    AppStrings.kBuyPack,
                                    style: TextStyle(
                                        color: AppColors.kWhite,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'Roboto-Regular'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
                  Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3.5,
                      ),
                      Image.asset('assets/images/noData.png'),
                      const Text(
                        AppStrings.knoPast,
                        style: TextStyle(fontSize: 15),
                      ),
                      const Spacer(),
                      Container(
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        color: AppColors.kDarkBlue,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Row(
                            children: [
                              const Text(
                                AppStrings.kPostLoads,
                                style: TextStyle(
                                    color: AppColors.kWhite,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    fontFamily: 'Roboto-Regular'),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    border:
                                        Border.all(color: AppColors.kWhite)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    AppStrings.kBuyPack,
                                    style: TextStyle(
                                        color: AppColors.kWhite,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        fontFamily: 'Roboto-Regular'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
                  // Center( child: Text("Three",style: TextStyle(fontSize: 50),))
                ]),
        ),
      ),
    );
  }

  loadBalance() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
      child: Container(
        height: 30,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.kGrey.withOpacity(0.35),
          // border: Border.all(color: Colors.black)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.list_alt_sharp,
                color: AppColors.kBlack,
                size: 15,
              ),
              // SizedBox(
              //   width: 3,
              // ),
              Text(
                AppStrings.kLoadBalance,
                style: TextStyle(
                    color: AppColors.kBlack,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  helpcustome() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
        height: 30,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.kGrey.withOpacity(0.35),
          // border: Border.all(color: Colors.black)
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.call,
                color: AppColors.kBlack,
                size: 12,
              ),
              // SizedBox(
              //   width: 3,
              // ),
              Text(
                "Help  ",
                style: TextStyle(
                    color: AppColors.kBlack,
                    fontFamily: 'Roboto-Regular',
                    fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
