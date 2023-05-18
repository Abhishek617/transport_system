import 'package:flutter/material.dart';
import 'package:royal_cargo/utils/appColors.dart';
import 'package:royal_cargo/utils/appStrings.dart';

class MyLoads extends StatefulWidget {
  const MyLoads({Key? key}) : super(key: key);

  @override
  State<MyLoads> createState() => _MyLoadsState();
}

class _MyLoadsState extends State<MyLoads> {
  bool loads = true;

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
              ? TabBarView(children: [
                  ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 18,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                                color: AppColors.kWhite,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.kGrey.withOpacity(0.5),
                                    blurRadius: 4.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(0.0, 3.0),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'ID 8102760',
                                        style: TextStyle(
                                            color: AppColors.kGrey,
                                            fontSize: 10,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Spacer(),
                                      Text(
                                        '23 Feb, 02.51 PM',
                                        style: TextStyle(
                                            color: AppColors.kGrey,
                                            fontSize: 10,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Anand\nGujarat',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 16,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.arrow_forward),
                                      Text(
                                        'Rajkot\nGujarat',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 16,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  // const SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Bricks',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Truck(s)',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Open\nBody',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  // const SizedBox(height: 5,),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\u{20B9}10,000 Per Truck',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '1 Match Found',
                                            style: TextStyle(
                                                color: AppColors.kBlue,
                                                fontSize: 14,
                                                fontFamily: 'Roboto-Regular',
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: AppColors.kBlue,
                                            size: 12,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: 18,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            decoration: BoxDecoration(
                                color: AppColors.kWhite,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.kGrey.withOpacity(0.5),
                                    blurRadius: 4.0,
                                    spreadRadius: 0.0,
                                    offset: const Offset(0.0, 3.0),
                                  ),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Row(
                                    children: const [
                                      Text(
                                        'ID 8102760',
                                        style: TextStyle(
                                            color: AppColors.kGrey,
                                            fontSize: 10,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Spacer(),
                                      Text(
                                        '23 Feb, 02.51 PM',
                                        style: TextStyle(
                                            color: AppColors.kGrey,
                                            fontSize: 10,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Anand\nGujarat',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 16,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Icon(Icons.arrow_forward),
                                      Text(
                                        'Rajkot\nGujarat',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 16,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  // const SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'Bricks',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Truck(s)',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'Open\nBody',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      )
                                    ],
                                  ),
                                  // const SizedBox(height: 5,),
                                  const Divider(
                                    thickness: 1,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\u{20B9}10,000 Per Truck',
                                        style: TextStyle(
                                            color: AppColors.kBlack,
                                            fontSize: 14,
                                            fontFamily: 'Roboto-Regular',
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            '1 Match Found',
                                            style: TextStyle(
                                                color: AppColors.kBlue,
                                                fontSize: 14,
                                                fontFamily: 'Roboto-Regular',
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: AppColors.kBlue,
                                            size: 12,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
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
