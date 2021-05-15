import 'dart:io';

import 'package:doctor_appointment/common/colors.dart';
import 'package:doctor_appointment/common/comman.dart';
import 'package:doctor_appointment/common/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import 'appoinment_details_screen.dart';

class YourDetailScreen extends StatefulWidget {
  const YourDetailScreen({Key key}) : super(key: key);

  @override
  _YourDetailScreenState createState() => _YourDetailScreenState();
}

class _YourDetailScreenState extends State<YourDetailScreen> {
  bool checkBox = false;
  bool name = false;
  bool age = false;
  bool sex = false;
  bool phone = false;
  bool phoneValidate = false;
  bool address = false;

  TextEditingController coName = TextEditingController(text: "");
  TextEditingController coAge = TextEditingController(text: "");
  TextEditingController coSex = TextEditingController(text: "");
  TextEditingController coPhone = TextEditingController(text: "");
  TextEditingController coAddress = TextEditingController(text: "");

  var focName = FocusNode();
  var focAge = FocusNode();
  var focSex = FocusNode();
  var focPhone = FocusNode();
  var foAddress = FocusNode();


  @override
  Widget build(BuildContext context) {
    SizerUtil().toString();
    return   Platform.isIOS
        ? CupertinoPageScaffold:Scaffold(
      backgroundColor: AppColor.colorBackGround,
      body:  Platform.isIOS
          ? CupertinoScrollbar:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0.h),
              child: Center(
                  child: Text(
                AppString.yourDetail,
                style: AppStyle.textViewStyleUltraBold(
                    AppColor.colorWhite, 17.0.sp),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0.h, left: 4.0.w, right: 4.0.w),
              padding: EdgeInsets.only(top: 3.0.h, left: 3.0.w, right: 3.0.w),
              height: 75.0.h,
              width: 100.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: AppColor.colorWhite),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      AppString.detail,
                      style: AppStyle.textViewStyleUltraBold(
                          AppColor.colorBlack, 17.0.sp),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 2.0.h),
                      child:  Platform.isIOS
                          ? CupertinoTextField: TextField(
                        onChanged: (text) {
                          if (text.length != 0) {
                            setState(() {
                              name = false;
                            });
                          } else {
                            setState(() {
                              name = true;
                            });
                          }
                        },
                        focusNode: focName,
                        controller: coName,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(

                          labelText: '*' + AppString.name,
                          labelStyle: TextStyle(
                              color: AppColor.colorBlack, fontSize: 15.0.sp),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Jefika Sabnnam',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: AppColor.colorWhite,
                          focusedErrorBorder:  OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.colorGrayLite, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide:
                                BorderSide(color: AppColor.colorGrayLite),
                          ),
                          errorText: name
                              ?
                               'Enter Name'
                              : null,
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 40.0.w,
                          margin: EdgeInsets.only(top: 2.0.h),
                          child:  Platform.isIOS
                              ? CupertinoTextField: TextField(
                            onChanged: (text) {
                              if (text.length != 0) {
                                setState(() {
                                  age = false;
                                });
                              } else {
                                setState(() {
                                  age = true;
                                });
                              }
                            },
                            focusNode: focAge,
                            controller: coAge,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: '*' + AppString.age,
                              labelStyle: TextStyle(
                                  color: AppColor.colorBlack,
                                  fontSize: 15.0.sp),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: '45Y',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: AppColor.colorWhite,
                              focusedErrorBorder:  OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: AppColor.colorGrayLite, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide:
                                    BorderSide(color: AppColor.colorGrayLite),
                              ),
                              errorText: age
                                  ?
                              'Enter age'
                                  : null,
                            ),
                          )),
                      Container(
                          width: 40.0.w,
                          margin: EdgeInsets.only(top: 2.0.h),
                          child: Platform.isIOS
                              ? CupertinoTextField:  TextField(
                            onChanged: (text) {
                              if (text.length != 0) {
                                setState(() {
                                  sex = false;
                                });
                              } else {
                                setState(() {
                                  sex = true;
                                });
                              }
                            },
                            focusNode: focSex,
                            controller: coSex,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: '*' + AppString.sex,
                              labelStyle: TextStyle(
                                  color: AppColor.colorBlack,
                                  fontSize: 15.0.sp),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              hintText: 'Female',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: AppColor.colorWhite,
                              focusedErrorBorder:  OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: Colors.red, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                    color: AppColor.colorGrayLite, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide:
                                    BorderSide(color: AppColor.colorGrayLite),
                              ),
                              errorText: sex
                                  ?
                              'Enter Sex'
                                  : null,
                            ),
                          )),
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 2.0.h),
                      child:  Platform.isIOS
                          ? CupertinoTextField: TextField(
                        onChanged: (text) {
                          if (text.length != 0) {
                            setState(() {
                              phone = false;
                            });
                          } else {
                            setState(() {
                              phone = true;
                            });
                          }
                        },
                        focusNode: focPhone,
                        controller: coPhone,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          new LengthLimitingTextInputFormatter(10)
                        ],
                        decoration: InputDecoration(
                          labelText: '*' + AppString.phone,
                          labelStyle: TextStyle(
                              color: AppColor.colorBlack, fontSize: 15.0.sp),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: '0123456789',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: AppColor.colorWhite,
                          focusedErrorBorder:  OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.colorGrayLite, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide:
                                BorderSide(color: AppColor.colorGrayLite),
                          ),
                          errorText: phone
                              ? phoneValidate
                              ?'Enter valid Phone Number'
                              : 'Enter Phone Number'
                              : null,
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 2.0.h),
                      child: Platform.isIOS
                          ? CupertinoTextField:  TextField(
                        onChanged: (text) {
                          if (text.length != 0) {
                            setState(() {
                              address = false;
                            });
                          } else {
                            setState(() {
                              address = true;
                            });
                          }
                        },
                        maxLines: 2,
                        focusNode: foAddress,
                        controller: coAddress,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: '*' + AppString.address,
                          labelStyle: TextStyle(
                              color: AppColor.colorBlack, fontSize: 15.0.sp),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: 'Waitrose & Partners Altrincham',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: AppColor.colorWhite,
                          focusedErrorBorder:  OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        color: Colors.red, width: 2),
                  ),
                          errorBorder: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: Colors.red, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                                color: AppColor.colorGrayLite, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide:
                                BorderSide(color: AppColor.colorGrayLite),
                          ),
                          errorText: address
                              ?
                          'Enter Address'
                              : null,
                        ),
                      )),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: _openFileExplorer,
                        child: Container(
                          margin: EdgeInsets.only(top: 2.5.h),
                          height: 10.0.h,
                          width: 100.0.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: AppColor.colorGrayLite, width: 2.5)),
                          child: Icon(
                            Icons.image,
                            size: 15.0.w,
                            color: AppColor.colorGrayLite,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 1.9.h,
                          left: 2.0.w,
                          child: Container(
                            padding: EdgeInsets.only(left: 2.0.w, right: 2.0.w),
                            color: AppColor.colorWhite,
                            child: Row(
                              children: [
                                Text(
                                  AppString.attachFile,
                                  style: TextStyle(
                                      fontSize: 11.0.sp,
                                      color: AppColor.colorBlack),
                                ),
                                Text(AppString.optional,
                                    style: TextStyle(
                                        fontSize: 11.0.sp,
                                        color: AppColor.colorGray)),
                              ],
                            ),
                          ))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1.0.h),
                    child: Text(
                      AppString.youHavePre,
                      style: AppStyle.textViewStyleRegular(
                          AppColor.colorDodgerBlue, 12.0.sp),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: checkBox,
                            visualDensity: VisualDensity.compact,
                            onChanged: (bool value) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            }),
                        Container(
                          child: Text(
                            AppString.savePatientIn,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 10.0.sp),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.0.h),
                    height: 6.0.h,
                    width: 100.0.w,
                    child: Platform.isIOS
                        ? CupertinoButton:  MaterialButton(
                      onPressed: () {
                        bool valid = validate();
                        setState(() {
                          if (!valid) {
                            Platform.isIOS
                                ? Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        AppointmentDetailScreen()))
                                : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AppointmentDetailScreen()));

                          }
                        });
                      },
                      color: AppColor.colorDodgerBlue,
                      child: Text(
                        AppString.next,
                        style: AppStyle.textViewStyleUltraBold(
                            AppColor.colorWhite, 12.0.sp),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  void _openFileExplorer() async {}

  validate() {
    bool valid = false;
    if (coName.text.length == 0) {
      checkBox = false;
      name = true;
      age = false;
      sex = false;
      phoneValidate = false;
      phone = false;
      address = false;
      focName.requestFocus();
      valid = true;
    }
    else  if (coAge.text.length == 0) {
      checkBox = false;
      name = false;
      age = true;
      sex = false;
      phoneValidate = false;
      phone = false;
      address = false;
      focAge.requestFocus();
      valid = true;
    }
    else  if (coSex.text.length == 0) {
      checkBox = false;
      name = false;
      age = false;
      sex = true;
      phoneValidate = false;
      phone = false;
      address = false;
      focSex.requestFocus();
      valid = true;
    }

    else  if (coPhone.text.length == 0) {
      checkBox = false;
      name = false;
      age = false;
      phoneValidate = false;
      sex = false;
      phone = true;
      address = false;
      focPhone.requestFocus();
      valid = true;
    }
    else  if (coPhone.text.length <10) {
      checkBox = false;
      name = false;
      age = false;
      phoneValidate = true;
      sex = false;
      phone = false;
      address = false;
      focPhone.requestFocus();
      valid = true;
    }
    else  if (coAddress.text.length == 0) {
      checkBox = false;
      name = false;
      age = false;
      sex = false;
      phone = false;
      phoneValidate = false;
      address = true;
      foAddress.requestFocus();
      valid = true;
    }
    else  if (checkBox == false) {
      checkBox = false;
      name = false;
      age = false;
      sex = false;
      phone = false;
      phoneValidate = false;
      address = false;
      foAddress.requestFocus();
      valid = true;
      FocusScopeNode currentFocus = FocusScope.of(context);

      currentFocus.unfocus();
      showDialog(
          context: context,
          builder: (context) => new AlertDialog(

              content: new Text('Please CheckMark'+AppString.savePatientIn),
              actions: <Widget>[
                new MaterialButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  color: AppColor.colorBackGround,
                  child: Text('ok'),
                )
              ]));

      valid = true;
    }
    else   {
      checkBox = false;
      name = false;
      age = false;
      sex = false;
      phone = false;
      phoneValidate = false;
      address = false;

      valid = false;
    }
    return valid;
  }
}
