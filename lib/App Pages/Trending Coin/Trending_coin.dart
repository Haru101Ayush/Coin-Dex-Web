import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';

import 'controller.dart';

class  extends ConsumerStatefulWidget{
  @override
  ConsumerState<Trending_coin> createState() => _Trending_coinState();
}

class _Trending_coinState extends ConsumerState<Trending_coin> {
  List<dynamic> maker = [];
  @override
  void initState() {
    strike();
    super.initState();
  }

  void strike() async {
    maker = await trending();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 21, 23, 25),
            Color.fromARGB(255, 32, 37, 42)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          // Optional background color
          borderRadius: BorderRadius.only(
            topLeft:
            Radius.circular(20.r), // Set top-left corner radius
            topRight: Radius.circular(20.r),
          )),
      child: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 120.h),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Center(
                child: Text(
                  'Start Your Journey',
                  style: GoogleFonts.barlowSemiCondensed(
                    textStyle: TextStyle(
                        fontSize: 60.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 40.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350.w,
                  height: 370.h,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.grey.withOpacity(0.03)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('lib/assects/crypto.png'),
                        width: 100.w,
                        height: 100.h,
                      ),
                      Text(
                        'Make Your First Deposit',
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Manage hundred of supported assets,plus import unlimited tokens',
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              color: Colors.grey, fontSize: 16.sp),
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(width: 5.w), // Add spacing between texts
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => LinearGradient(
                          colors: <Color>[
                            Color.fromARGB(255, 111, 98, 192),
                            Color.fromARGB(255, 154, 141, 238)
                          ], // Adjust colors as desired
                        ).createShader(bounds),
                        child: Text(
                          'Receive Crypto',
                          style: GoogleFonts.barlowSemiCondensed(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              // Remove color since we're using ShaderMask
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30.h,
                ),
                Container(
                  width: 350.w,
                  height: 370.h,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.grey.withOpacity(0.03)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('lib/assects/crypto.png'),
                        width: 100.w,
                        height: 100.h,
                      ),
                      Text(
                        'Make Your First Deposit',
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Manage hundred of supported assets,plus import unlimited tokens',
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              color: Colors.grey, fontSize: 16.sp),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 5.w), // Add spacing between texts
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => LinearGradient(
                          colors: <Color>[
                            Color.fromARGB(255, 111, 98, 192),
                            Color.fromARGB(255, 154, 141, 238)
                          ], // Adjust colors as desired
                        ).createShader(bounds),
                        child: Text(
                          'Receive Crypto',
                          style: GoogleFonts.barlowSemiCondensed(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              // Remove color since we're using ShaderMask
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30.h,
                ),
                Container(
                  width: 350.w,
                  height: 370.h,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.grey.withOpacity(0.03)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('lib/assects/crypto.png'),
                        width: 100.w,
                        height: 100.h,
                      ),
                      Text(
                        'Make Your First Deposit',
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Manage hundred of supported assets,plus import unlimited tokens',
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              color: Colors.grey, fontSize: 16.sp),
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(width: 5.w), // Add spacing between texts
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => LinearGradient(
                          colors: <Color>[
                            Color.fromARGB(255, 111, 98, 192),
                            Color.fromARGB(255, 154, 141, 238)
                          ], // Adjust colors as desired
                        ).createShader(bounds),
                        child: Text(
                          'Receive Crypto',
                          style: GoogleFonts.barlowSemiCondensed(
                            textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              // Remove color since we're using ShaderMask
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 150.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  headline(),
                  Container(
                    width: double.infinity,
                    height: 550.h,
                    color: Colors.white.withOpacity(0.02),
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: SingleChildScrollView(
                      child: Column(
                          children: maker.map((index) {
                            return CryptoCard(
                              image_url: index['item']['small'],
                              asset: index['item']['symbol'],
                              price:
                              index['item']['data']['price'].toString(),
                              marketCap: index['item']['data']
                              ['market_cap'],
                              volume24h: index['item']['data']
                              ['total_volume'],
                              trend30d: index['item']['data']['sparkline'],
                              change24h: index['item']['data']
                              ['market_cap'],
                            );
                          }).toList()),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class headline extends StatelessWidget {
  const headline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(255, 12, 14, 15),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Trending Coins',
                style: GoogleFonts.barlowSemiCondensed(
                  textStyle: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 10.w,
              ),
              Icon(
                Icons.trending_up_rounded,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Expanded(
                child: Table(
                  children: [
                    TableRow(children: [
                      TableCell(
                          child: Text(
                            'ASSET NAME',
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          )),
                      TableCell(child: SizedBox()),
                      TableCell(child: SizedBox()),
                      TableCell(
                          child: Text(
                            'PRICE',
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            textAlign: TextAlign.center,
                          )),
                      TableCell(
                          child: Text(
                            '24H CHANGE',
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            textAlign: TextAlign.center,
                          )),
                      TableCell(
                          child: Text(
                            'MARKET CAP',
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            textAlign: TextAlign.center,
                          )),
                      TableCell(
                          child: Text(
                            '24H VOL',
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            textAlign: TextAlign.center,
                          )),
                      TableCell(
                          child: Text(
                            'Trending Coins',
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                            textAlign: TextAlign.center,
                          )),
                    ])
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  final String asset;
  final String image_url;
  final String price;
  final String change24h;
  final String marketCap;
  final String volume24h;
  final String trend30d;

  const CryptoCard({
    required this.asset,
    required this.price,
    required this.change24h,
    required this.marketCap,
    required this.volume24h,
    required this.trend30d,
    required this.image_url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Table(
              children: [
                TableRow(children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.middle,
                    child: SizedBox(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28.r,
                            backgroundImage: NetworkImage(image_url),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            asset,
                            style: GoogleFonts.barlowSemiCondensed(
                              textStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  TableCell(
                    child: SizedBox(),
                  ),
                  TableCell(
                    child: SizedBox(),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Text(
                        price,
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        textAlign: TextAlign.center,
                      )),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Text(
                        change24h,
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        textAlign: TextAlign.center,
                      )),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Text(
                        marketCap,
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        textAlign: TextAlign.center,
                      )),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Text(
                        volume24h,
                        style: GoogleFonts.barlowSemiCondensed(
                          textStyle: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                        textAlign: TextAlign.center,
                      )),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: Image(
                        image: NetworkImage(trend30d),
                      )),
                ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
