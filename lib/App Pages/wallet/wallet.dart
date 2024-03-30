import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
   final List<String> items = ['Item 1', 'Item 2', 'Item 3'];
    String selectedItem = '';
    OverlayEntry? _overlayEntry;
     bool _showDrawer = false;

  void _toggleDrawer() {
    setState(() {
      _showDrawer = !_showDrawer;
    });
  }

  void _showOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return GestureDetector(
          onTap: () {
            _hideOverlay();
          },
          child: Material(
            color: Colors.black.withOpacity(0.3),
            child: Container(
              width: 400.w,
              height: 600.h,
              //alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(horizontal: 500.w,vertical: 400.h),
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
      appBar: AppBar(
  // leading: IconButton(
  //         icon: Icon(Icons.menu),
  //         onPressed: _toggleDrawer,
  //       ),
        backgroundColor: Colors.black,
        title: Text(
          'Coin Dex',
          style: GoogleFonts.audiowide(
            textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.watch_later,
              color: Colors.white,
            ),
            onPressed: () => print('Watch later'),
          ),
          IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () => print('person'),
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () => print('Settings'),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 62, 65, 66),
              Color.fromARGB(255, 36, 37, 39)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            )),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.star,
                color: Colors.white38,
                //  size: 30.0,
              ),
              SizedBox(
                width: 20.w,
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
                // size: 30.0,
              ),
            ],
          ),
          // SizedBox(
          //   height: 10.h,
          // ),
          Center(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 45.r,
                      ),
                      // SizedBox(
                      //   height: 5.h,
                      // ),
                      Text(
                        '0 BTC',
                        style: GoogleFonts.archivoNarrow(
                          textStyle: TextStyle(
                              fontSize: 70.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        '\$0.00',
                        style: GoogleFonts.archivoNarrow(
                          textStyle: TextStyle(
                              fontSize: 40.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ),
                    
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 265.w,
                            height: 70.h,
                            child: TextButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.amber,
                                        width: 2.w,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Send',
                                  style: GoogleFonts.archivoNarrow(
                                    textStyle: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                          SizedBox(
                            width: 40.h,
                          ),
                          SizedBox(
                            width: 265.w,
                            height: 70.h,
                            child: TextButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.amber,
                                        width: 2.w,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Receive',
                                  style: GoogleFonts.archivoNarrow(
                                    textStyle: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          CircleAvatar(
                            radius: 35.r,
                          ),
                        ],
                      ),
                    ])
              ])),
                // Align(
                //   alignment: Alignment.topLeft,
                //   child: GestureDetector(
                //     onTap: _showOverlay,
                //     child: Container(
                //       height: 160.h,
                //       width: 55.w,
                //       decoration: BoxDecoration(
                //         borderRadius:
                //             BorderRadius.circular(0.r),
                //         // color: const Color.fromARGB(
                //         //     255, 62, 65, 66),
                //         color: Colors.white
                //       ),
                //     padding: EdgeInsets.only(
                //         right: 10.w,
                //       ),
                //       child: Row(
                //         mainAxisAlignment:
                //             MainAxisAlignment.start,
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                         
                //           SizedBox(
                //             width: 10.w,
                //           ),
                         
                //           Icon(
                //             Icons.chevron_right,
                //            // size: 40.sp,
                //             color: Colors.black,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
              

 
      // Stack(
      //   children: [
      //     // Your main content here
      //     _showDrawer
      //         ? Positioned( // Position the drawer outside the app bar
      //             left: 80.0,
                  
      //          //  top: AppBar().preferredSize.height, // Adjust top position as needed
      //          top: 200.0,
      //             child: Drawer(
      //               child: Container(
      //                 color: Colors.blue,
      //                 // child: [
      //                 //  Text('data')
      //                 // ]
      //               ),
      //             ),
      //         )
        
      
      //         : Container(
      //           color: Colors.white,
                
      //           child:  IconButton(
      //     icon: Icon(Icons.menu),
      //     onPressed: _toggleDrawer,
      //   ),
      //         ),
      //   ]),
      
          Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                  // mainAxisSize: MainAxisSize.max,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(children: [
                      Text(
                        'PRICE CHART',
                        style: GoogleFonts.archivoNarrow(
                          textStyle: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                       
                      ),
                    ])
                  ])),
        
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Text(
                  'ACTIVITY',
                  style: GoogleFonts.archivoNarrow(
                    textStyle: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'ABOUT',
                  style: GoogleFonts.archivoNarrow(
                    textStyle: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'VIDEOS',
                  style: GoogleFonts.archivoNarrow(
                    textStyle: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 40.w,
                ),
                Text(
                  'NEWS',
                  style: GoogleFonts.archivoNarrow(
                    textStyle: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ]),
        // ],
      ),
    );
  }
}
class CustomDrawer extends StatelessWidget {
  final Widget child;

  const CustomDrawer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7, // Adjust width as needed
      color: Colors.white, // Customize background color
      child: child,
    );
  }
}