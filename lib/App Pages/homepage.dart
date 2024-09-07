import 'package:coindex/App%20Pages/fiatOnramp/pay.dart';
import 'package:coindex/App%20Pages/wallet/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DashBoard/Trending_coin.dart';
import 'Swap/swap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //#############################################[VARIABLE SAPACE]#################################################################
  Widget Active_page = Trending_coin();
  List<String> active_page = [];
  //################################################################################################################################
  @override
  void initState() {
    Active_page = Trending_coin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            //Swaping variable for screen change
            Container(
              width: 270.w,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: Column(
                children: [
                  Image(
                    image: AssetImage('lib/assects/image.png'),
                    height: 100.h,
                    width: 100.w,
                  ),
                  Text(
                    'Ledger X',
                    style: GoogleFonts.audiowide(
                      textStyle: TextStyle(
                          color: Colors.white,
                          letterSpacing: 5.sp,
                          fontSize: 30.sp),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Active_page = Trending_coin();
                          active_page.clear();
                          active_page.add('Trending_coin');
                          setState(() {});
                        },
                        child: active_page.contains('Trending_coin')
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 20.w),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'lib/assects/Portfolio.png'),
                                      height: 70.h,
                                      width: 70.w,
                                    ),
                                    Text('Portfolio',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              letterSpacing: 5.sp,
                                              fontSize: 20.sp),
                                        )),
                                  ],
                                ),
                              )
                            : Image(
                                image: AssetImage('lib/assects/Portfolio.png'),
                                height: 70.h,
                                width: 70.w,
                              ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Active_page = WalletScreen();
                          active_page.clear();
                          active_page.add('Wallet');
                          setState(() {});
                        },
                        child: active_page.contains('Wallet')
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 20.w),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('lib/assects/crypto.png'),
                                      height: 70.h,
                                      width: 70.w,
                                    ),
                                    Text('Wallet',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              letterSpacing: 5.sp,
                                              fontSize: 20.sp),
                                        )),
                                  ],
                                ),
                              )
                            : Image(
                                image: AssetImage('lib/assects/crypto.png'),
                                height: 70.h,
                                width: 70.w,
                              ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Active_page = SwapScreen();
                          active_page.clear();
                          active_page.add('SwapScreen');
                          setState(() {});
                        },
                        child: active_page.contains('SwapScreen')
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 20.w),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage('lib/assects/Swap.png'),
                                      height: 70.h,
                                      width: 70.w,
                                    ),
                                    Text('Swap',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              letterSpacing: 5.sp,
                                              fontSize: 20.sp),
                                        )),
                                  ],
                                ),
                              )
                            : Image(
                                image: AssetImage('lib/assects/Swap.png'),
                                height: 70.h,
                                width: 70.w,
                              ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Active_page = payScreen();
                          active_page.clear();
                          active_page.add('NFT');
                          setState(() {});
                        },
                        child: active_page.contains('NFT')
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 20.w),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage('lib/assects/NFT.png'),
                                      height: 70.h,
                                      width: 70.w,
                                    ),
                                    Text('NFT',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              letterSpacing: 5.sp,
                                              fontSize: 20.sp),
                                        )),
                                  ],
                                ),
                              )
                            : Image(
                                image: AssetImage('lib/assects/NFT.png'),
                                height: 70.h,
                                width: 70.w,
                              ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Active_page = payScreen();
                          active_page.clear();
                          active_page.add('Pay');
                          setState(() {});
                        },
                        child: active_page.contains('Pay')
                            ? AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 20.w),
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.r),
                                    bottomLeft: Radius.circular(30.r),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'lib/assects/istockphoto-1365005093-1024x1024-removebg-preview.png'),
                                      height: 70.h,
                                      width: 70.w,
                                    ),
                                    Text('Buy & Sell',
                                        style: GoogleFonts.inter(
                                          textStyle: TextStyle(
                                              color: Colors.black,
                                              letterSpacing: 5.sp,
                                              fontSize: 20.sp),
                                        )),
                                  ],
                                ),
                              )
                            : Image(
                                image: AssetImage(
                                    'lib/assects/istockphoto-1365005093-1024x1024-removebg-preview.png'),
                                height: 70.h,
                                width: 70.w,
                              ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60.w),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {},
                    child: Image(
                      image: AssetImage('lib/assects/image.png'),
                      height: 100.h,
                      width: 100.w,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ));
  }
}
