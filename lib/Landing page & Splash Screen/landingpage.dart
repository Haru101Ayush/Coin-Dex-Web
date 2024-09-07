import 'package:coindex/App%20Pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing_page extends StatefulWidget {
  const Landing_page({
    super.key,
  });

  @override
  State<Landing_page> createState() => _Landing_pageState();
}

class _Landing_pageState extends State<Landing_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
                image:
                    AssetImage('lib/assects/Baground Images/landing_bg.jpeg'),
                fit: BoxFit.fill),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 30.w),
                child: Text(
                  'Ledger X',
                  style: GoogleFonts.audiowide(
                    textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: 5.sp,
                        fontSize: 46.sp),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 100.w, top: 300.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Track all your assets\nfrom one place',
                      style: GoogleFonts.inter(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 46.sp),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ignite your cosmic trading journey. where \ndecentralization meets Discover',
                      style: GoogleFonts.inter(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 21.sp),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 190,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          return context.go('/SignIn');
                        },
                        child: Text(
                          'Start Now',
                          style:
                              TextStyle(color: Colors.black, fontSize: 23.sp),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2), // Adjust corner radius as desired
                          ),
                        ),
                      ),
                    ),
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
