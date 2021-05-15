import 'dart:io';

import 'package:doctor_appointment/common/colors.dart';
import 'package:doctor_appointment/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, screenType){
          return Platform.isIOS
              ? CupertinoApp:  MaterialApp(
              title: 'Doctor Appointment App',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primaryColor:AppColor.colorGray
              ),
              home:LogInScreen()

          );
        });
  }
}
