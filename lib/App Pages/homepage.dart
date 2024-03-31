import 'package:coindex/App%20Pages/Trending%20Coin/Trending_coin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Swap/swap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //#############################################[VARIABLE SAPACE]#################################################################
  Widget Active_page=Trending_coin();
  //################################################################################################################################
  @override
  void initState() {
    Active_page=Trending_coin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Image(
                image: AssetImage("lib/assects/image.png"),
                height: 60.h,
                width: 60.w,
              ),
              Text(
                'CoinDex',
                style: GoogleFonts.audiowide(
                  textStyle: TextStyle(
                      letterSpacing: 5,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.history,
                size: 30,
                color: Colors.white,
              ),
              onPressed:(){}, // Handle search action
            ),
            IconButton(
              icon: Icon(
                Icons.support_agent,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () => print('person'), // Handle search action
            ),
            IconButton(
              icon: Icon(
                Icons.settings_outlined,
                size: 30,
                color: Colors.white,
              ),
              onPressed: () => print('Settings'), // Handle search action
            ),
          ],
        ),
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [

            Active_page, //Swaping variable for screen change


            Container(
            width: 400.w,
            margin: EdgeInsets.symmetric(vertical: 20.h),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(20.r)

              // borderRadius: BorderRadius.only(
              //     topRight: Radius.circular(20.r),
              //     topLeft: Radius.circular(20.r))

            ),
            padding: EdgeInsets.symmetric(vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('lib/assects/Portfolio.png'),
                      height: 40.h,
                      width: 40.w,
                    ),
                    Text(
                      'Portfolio',
                      style: GoogleFonts.barlowSemiCondensed(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('lib/assects/crypto.png'),
                      height: 40.h,
                      width: 40.w,
                    ),
                    Text(
                      'Wallet',
                      style: GoogleFonts.barlowSemiCondensed(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                GestureDetector(
                  onTap:(){
                   Active_page=SwapScreen();
                   setState(() {

                   });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(
                        image: AssetImage('lib/assects/Swap.png'),
                        height: 40.h,
                        width: 40.w,
                      ),
                      Text(
                        'Swap',
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('lib/assects/NFT.png'),
                      height: 40.h,
                      width: 40.w,
                    ),
                    Text(
                      'NFT',
                      style: GoogleFonts.barlowSemiCondensed(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage('lib/assects/Portfolio.png'),
                      height: 40.h,
                      width: 40.w,
                    ),
                    Text(
                      'Portfolio',
                      style: GoogleFonts.barlowSemiCondensed(
                        textStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ],
            ),
          ),
          ],
        ));
  }
}


