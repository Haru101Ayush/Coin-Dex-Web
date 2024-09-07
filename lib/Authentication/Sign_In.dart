import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MyApp());
// }

class Sign_In extends StatefulWidget {
  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  var emailName = TextEditingController();
  var passwordName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.h, left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Ledger X',
                  style: GoogleFonts.audiowide(
                    textStyle: TextStyle(
                        color: Colors.white,
                        letterSpacing: 5.sp,
                        fontSize: 46.sp),
                  ),
                ),
                Text(
                  'Make your data worth its value ',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                ),
                Container(
                  height: 100.h,
                  width: 900.w,
                  margin: EdgeInsets.only(top: 60.h),
                  padding: EdgeInsets.all(15.sp),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 41, 38, 99),
                        Color.fromARGB(255, 0, 0, 0),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r),
                    ),
                  ),
                  child:Row(mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(alignment: Alignment.topLeft,
                        child: Image(
                          image: AssetImage('lib/assects/Quote.png'),
                          height: 30.h,
                          width: 30.w,
                        ),
                      ),
                      SizedBox(width:8.w,),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Coin DEX Token is embodiment of your data value and the link of the ecosystem\nconfirm it buy it farm it stake it.',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(color: Colors.white, fontSize:18.sp),
                          ),textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100.h,
                  width: 500.w,
                  margin: EdgeInsets.only(top: 60.h,left:60.w),
                  padding: EdgeInsets.all(15.sp),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 41, 38, 99),
                        Color.fromARGB(255, 0, 0, 0),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r),
                    ),
                  ),
                  child:Row(mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(alignment: Alignment.topLeft,
                        child: Image(
                          image: AssetImage('lib/assects/Quote.png'),
                          height: 30.h,
                          width: 30.w,
                        ),
                      ),
                      SizedBox(width:8.w,),
                      Align(alignment: Alignment.bottomCenter,
                        child: Text(
                          'Optimizing your digital assets\nwith professional-grade tools.',
                          style: GoogleFonts.inter(
                            textStyle:
                            TextStyle(color: Colors.white, fontSize:18.sp),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(bottom:0.h, left: 350.w,
            child: Image(
              image: AssetImage('lib/assects/100 ETH ICON.jpeg'),
              height: 600.h,
              width: 900.w,
            ),
          ),
          Positioned(
            right: 200.w,
            top: 150.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child:Text(
                    'Sign In',
                    style: GoogleFonts.inter(
                      textStyle:
                      TextStyle(color: Colors.white, fontSize: 46.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Made by investors for the investors ',
                  style: TextStyle(fontSize: 18.sp, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 310.w,
                  height: 70.h,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: emailName,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 30.w),
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.w,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.w,
                            )),
                        prefixIcon: Icon(Icons.email,
                            color: Colors.white, size: 25.sp)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 310.w,
                  height: 70.h,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: passwordName,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(right: 30.w),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.w,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11.r),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1.w,
                            )),
                        prefixIcon: Icon(Icons.key_sharp,
                            color: Colors.white, size: 25.sp)),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.blue,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 310.w,
                    height: 70.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 155, 101, 181),
                          Color.fromARGB(255, 90, 40, 228),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      'Create my account',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        return context.go('/SignUp');
                      },
                      child: Container(
                        child: Text(
                          'Sign Up',
                          style:
                          TextStyle(color: Colors.blue, fontSize: 20.sp),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 310.w,
                  child: Text(
                    'or',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  child: Text(
                    'Sign in with Google',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
