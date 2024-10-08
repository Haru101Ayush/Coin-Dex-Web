import 'package:coindex/App%20Pages/fiatOnramp/sell.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class payScreen extends StatefulWidget {
  const payScreen({super.key});

  @override
  State<payScreen> createState() => _payScreenState();
}

class _payScreenState extends State<payScreen> {
  late Widget Active_page;
  @override
  
  void initState() {
    Active_page = Pay_mehord();
    super.initState();
  }

  final List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  String selectedItem = '';
  final _controller = TextEditingController();
  final _controller2 = TextEditingController();
  List<String> active_button = [];
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
                // margin: EdgeInsets.symmetric(horizontal: 400.w,vertical: 300.h),
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
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 62, 65, 66),
                  Color.fromARGB(255, 36, 37, 39)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                )),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Active_page = Pay_mehord();
                        setState(() {});
                      },
                      child: Text(
                        'Buy Crypto',
                        style: GoogleFonts.archivoNarrow(
                          textStyle: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        Active_page = sell_methord();
                        setState(() {});
                      },
                      child: Text(
                        'Sell Crypto',
                        style: GoogleFonts.archivoNarrow(
                          textStyle: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'History',
                        style: GoogleFonts.archivoNarrow(
                          textStyle: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(child: Active_page)
            ])));
  }

  Column Pay_mehord() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
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
                  'You Pay',
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 25.r,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'USD',
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
                                  borderRadius: BorderRadius.circular(0.r),
                                  borderSide:
                                      const BorderSide(color: Colors.black26)),
                            ),
                            onChanged: (value) {
                              setState(() {
                                selectedItem = value;
                              });
                            },
                            controller: _controller,
                            style: (_controller.text.isEmpty ||
                                    !_controller.text
                                        .contains(RegExp(r'[a-zA-Z]')))
                                ? const TextStyle(color: Colors.white)
                                : null,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 150.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
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
                  'You Receive',
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
                          color: const Color.fromARGB(255, 62, 65, 66),
                        ),
                        padding: EdgeInsets.only(
                          right: 10.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              hintText: '0.00',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0.r),
                                  borderSide:
                                      const BorderSide(color: Colors.black26)),
                            ),
                            onChanged: (value) {
                              setState(() {
                                selectedItem = value;
                              });
                            },
                            controller: _controller2,
                            style: (_controller.text.isEmpty ||
                                    !_controller.text
                                        .contains(RegExp(r'[a-zA-Z]')))
                                ? const TextStyle(color: Colors.white)
                                : null,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 350.w,
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10.r)),
            child: Center(
              child: Text(
                '1 BTC ~\$71,210.43USD(include fee)',
                style: GoogleFonts.archivoNarrow(
                  textStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Debit card with MoonPay',
            style: GoogleFonts.archivoNarrow(
              textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 450.w,
            height: 45.h,
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10.r)),
            child: Row(
              children: [
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {
                      active_button.clear();
                      active_button.add('\$100');
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: active_button.contains('\$100')
                          ? Colors.purple
                          : Colors.black38,
                    ),
                    child: Text(
                      '\$100',
                      style: GoogleFonts.archivoNarrow(
                        textStyle: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {
                      active_button.clear();
                      active_button.add('\$500');
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: active_button.contains('\$500')
                          ? Colors.purple
                          : Colors.black38,
                    ),
                    child: Text(
                      '\$500',
                      style: GoogleFonts.archivoNarrow(
                        textStyle: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {
                      active_button.clear();
                      active_button.add('max');
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: active_button.contains('max')
                          ? Colors.purple
                          : Colors.black38,
                    ),
                    child: Text(
                      'MAX',
                      style: GoogleFonts.archivoNarrow(
                        textStyle: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
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
              'CONTINUE',
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
              textStyle: TextStyle(fontSize: 16.sp),
              minimumSize: Size(500.w, 50.h),
            ),
          ),
        ]);
  }

  Column sell_methord() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
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
                  'You Sell',
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
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                  borderRadius: BorderRadius.circular(0.r),
                                  borderSide:
                                      const BorderSide(color: Colors.black26)),
                            ),
                            onChanged: (value) {
                              setState(() {
                                selectedItem = value;
                              });
                            },
                            controller: _controller,
                            style: (_controller.text.isEmpty ||
                                    !_controller.text
                                        .contains(RegExp(r'[a-zA-Z]')))
                                ? const TextStyle(color: Colors.white)
                                : null,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 150.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
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
                  'You Receive',
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
                          color: const Color.fromARGB(255, 62, 65, 66),
                        ),
                        padding: EdgeInsets.only(
                          right: 10.w,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 25.r,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'USD',
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
                                  borderRadius: BorderRadius.circular(0.r),
                                  borderSide:
                                      const BorderSide(color: Colors.black26)),
                            ),
                            onChanged: (value) {
                              setState(() {
                                selectedItem = value;
                              });
                            },
                            controller: _controller2,
                            style: (_controller.text.isEmpty ||
                                    !_controller.text
                                        .contains(RegExp(r'[a-zA-Z]')))
                                ? const TextStyle(color: Colors.white)
                                : null,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 350.w,
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 90.w),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10.r)),
            child: Center(
              child: Text(
                '1 BTC ~\$71,210.43USD(include fee)',
                style: GoogleFonts.archivoNarrow(
                  textStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Debit card with MoonPay',
            style: GoogleFonts.archivoNarrow(
              textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 450.w,
            height: 45.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10.r)),
            child: Row(
              children: [
                SizedBox(
                  width: 200.w,
                  child: TextButton(
                    onPressed: () {
                      active_button.clear();
                      active_button.add('min');
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: active_button.contains('min')
                          ? Colors.purple
                          : Colors.black12,
                    ),
                    child: Text(
                      'MIN',
                      style: GoogleFonts.archivoNarrow(
                        textStyle: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 200.w,
                  child: TextButton(
                    onPressed: () {
                      active_button.clear();
                      active_button.add('max');
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: active_button.contains('max')
                          ? Colors.purple
                          : Colors.black12,
                    ),
                    child: Text(
                      'MAX',
                      style: GoogleFonts.archivoNarrow(
                        textStyle: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: 630.w,
            height: 100.h,
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.amber,
                    width: 3.w,
                  ),
                ),
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r))),
            child: Row(
              children: [
                const Icon(
                  Icons.error_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  'You have no crypto to sell. Buy or Receive crypto to get started.',
                  style: GoogleFonts.archivoNarrow(
                    textStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    print('You clicked the button!');
                  },
                  child: Text(
                    'LEARN MORE',
                    style: GoogleFonts.archivoNarrow(
                      textStyle: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 53, 65, 71),
                    foregroundColor: Colors.white, // Text color
                    textStyle: TextStyle(fontSize: 16.sp),
                    minimumSize: Size(50.w, 40.h), // Font size
                  ),
                ),
              ],
            ),
          )
        ]);
  }

}
