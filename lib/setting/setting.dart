import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Settings extends StatefulWidget {
  const Settings({super.key});
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child:   Row(children: [
               Container(
                width: 40.w,
                height: double.infinity,
                color: Colors.black,
               ),
               Container(
                 width: 40.w,
                height: double.infinity,
                color: Colors.blue,
               ),
        ],)
      ),
    );
  }
}
