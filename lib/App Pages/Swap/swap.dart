import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SwapScreen extends StatefulWidget {
  const SwapScreen({super.key});

  @override
  State<SwapScreen> createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  String selectedItem = '';
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();
  OverlayEntry? _overlayEntry;

  void _showOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            _hideOverlay();
          },
          child: Material(
            color: Colors.black.withOpacity(0.3),
            child: Center(
              child: Container(
                width: 400.w,
                height: 600.h,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                padding: EdgeInsets.only(
                    left: 10.w, right: 10.w, bottom: 0, top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 500.w,
                      height: 65.h,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          labelText: 'Search',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.r)),
                        ),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('data'),
                            Text('data'),
                            Text('data'),
                            Text('data'),
                            Text('data'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    Overlay.of(context)?.insert(_overlayEntry!);
  }

  void _hideOverlay() {
    _overlayEntry?.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 62, 65, 66),
            Color.fromARGB(255, 36, 37, 39)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r), // Set top-left corner radius
            topRight: Radius.circular(20.r),
            // color: const Color.fromARGB(255, 94, 111, 124),
          )),
      child: Column(
        children: [
          SizedBox(
            height: 70.h,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I have 0 bitcoin',
                            style: GoogleFonts.archivoNarrow(
                              textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: _showOverlay,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.r),
                                    color: Colors.black26,
                                  ),
                                  padding: EdgeInsets.only(
                                    right: 10.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        radius: 25.r,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        'BTC',
                                        style: GoogleFonts.archivoNarrow(
                                          textStyle: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        size: 40.sp,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200.w,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150.w,
                                    height: 40.h,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(0.r),
                                            borderSide: const BorderSide(
                                                color: Colors.black26)),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedItem = value;
                                        });
                                      },
                                      controller: _controller,
                                      style: (_controller.text.isEmpty ||
                                          !_controller.text.contains(
                                              RegExp(r'[a-zA-Z]')))
                                          ? const TextStyle(
                                          color: Colors.white)
                                          : null,
                                    ),
                                  ),
                                  Text(
                                    '\$0.00',
                                    style: GoogleFonts.archivoNarrow(
                                      textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 5.h),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r),
                          )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I want 1 inch',
                            style: GoogleFonts.archivoNarrow(
                              textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: _showOverlay,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.r),
                                    color:
                                    const Color.fromARGB(255, 62, 65, 66),
                                  ),
                                  padding: EdgeInsets.only(
                                    right: 10.w,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        radius: 25.r,
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Text(
                                        '1INCH',
                                        style: GoogleFonts.archivoNarrow(
                                          textStyle: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        size: 40.sp,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200.w,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: 150.w,
                                    height: 40.h,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(0.r),
                                            borderSide: const BorderSide(
                                                color: Colors.black26)),
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedItem = value;
                                        });
                                      },
                                      controller: _controller2,
                                      style: (_controller.text.isEmpty ||
                                          !_controller.text.contains(
                                              RegExp(r'[a-zA-Z]')))
                                          ? const TextStyle(
                                          color: Colors.white)
                                          : null,
                                    ),
                                  ),
                                  Text(
                                    '\$0.00',
                                    style: GoogleFonts.archivoNarrow(
                                      textStyle: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      width: 500.w,
                      height: 35.h,
                      padding: EdgeInsets.symmetric(horizontal: 90.w),
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(20.r)),
                      child: Row(
                        children: [
                          Text(
                            'MIN',
                            style: GoogleFonts.archivoNarrow(
                              textStyle: TextStyle(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          Text(
                            'HALF',
                            style: GoogleFonts.archivoNarrow(
                              textStyle: TextStyle(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const Spacer(),
                          Text(
                            'MAX',
                            style: GoogleFonts.archivoNarrow(
                              textStyle: TextStyle(
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    TextButton(
                      onPressed: () {
                        print('You clicked the button!');
                      },
                      child: Text(
                        'Enter Amount',
                        style: GoogleFonts.archivoNarrow(
                          textStyle: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontSize: 16.sp),
                        minimumSize: Size(500.w, 50.h),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.error,
                              color: Color.fromARGB(255, 32, 31, 31),
                              size: 40.sp,
                            ),
                          ),
                          Text(
                            '1 BTC = 104,505.49 1 INCH',
                            style: GoogleFonts.archivoNarrow(
                              textStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 80.h,
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 35.h,
                          padding: EdgeInsets.symmetric(horizontal: 450.w),
                          child: Row(
                            children: [
                              RotatedBox(
                                quarterTurns: 2,
                                child: Icon(
                                  Icons.error,
                                  color: Color.fromARGB(255, 32, 31, 31),
                                  size: 40.sp,
                                ),
                              ),
                              Text(
                                'Bitcoin Network Fee',
                                style: GoogleFonts.archivoNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const Spacer(),
                              Text(
                                '0.00001726 BTC',
                                style: GoogleFonts.archivoNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                '\$1.25',
                                style: GoogleFonts.archivoNarrow(
                                  textStyle: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
