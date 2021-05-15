import 'dart:io';
import 'package:doctor_appointment/common/comman.dart';
import 'package:doctor_appointment/doctor_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'common/colors.dart';
import 'common/images.dart';
import 'common/string.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController conMobileNumber = TextEditingController(text: "");
  TextEditingController conPassword = TextEditingController(text: "");

  bool _mobileNumber = false;
  bool _mobileNumberValid = false;
  bool _password = false;

  var focMobileNumber = FocusNode();
  var focPassword = FocusNode();
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    SizerUtil().toString();
    return  Platform.isIOS
        ? CupertinoPageScaffold: Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 15.0.h),
          color: AppColor.colorBackGround,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Platform.isIOS
              ? CupertinoScrollbar
              : SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(left: 3.0.w,right: 3.0.w,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        color: AppColor.colorWhite),
                    child: (Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 40.0.w,
                          width: 60.0.w,
                          child: Image.asset(
                            AppImage.healthLogo,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5.0.w, right: 5.0.w),
                          child: Column(
                            children: [
                              Platform.isIOS
                                  ? CupertinoTextField: TextField(
                                onChanged: (text) {
                                  if (text.length != 0) {
                                    setState(() {
                                      _mobileNumber = false;
                                    });
                                  } else {
                                    setState(() {
                                      _mobileNumber = true;
                                    });
                                  }
                                },
                                style:TextStyle(
                                        fontSize: 15.0.sp,
                                        color: AppColor.colorBlack),
                                keyboardType: TextInputType.phone,
                                cursorColor: AppColor.colorDodgerBlue,
                                controller: conMobileNumber,
                                focusNode: focMobileNumber,
                                inputFormatters: [
                                  new LengthLimitingTextInputFormatter(10)
                                ],
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                  hintText: AppString.hintMobileNumber,
                                  contentPadding: EdgeInsets.only(top: 14.0.sp),
                                  errorText: _mobileNumber
                                      ? _mobileNumberValid
                                          ? AppErrorString.errorMobile
                                          : AppErrorString.errorMobileValid
                                      : null,
                                  prefixIcon: Icon(
                                    AppIcon.IC_PHONE,
                                    size: 20.0.sp,
                                    color: AppColor.colorGray,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Platform.isIOS
                                  ? CupertinoTextField:  TextField(
                                onChanged: (text) {
                                  if (text.length != 0) {
                                    setState(() {
                                      _password = false;
                                    });
                                  } else {
                                    setState(() {
                                      _password = true;
                                    });
                                  }
                                },
                                style: TextStyle(
                                    fontSize: 15.0.sp,
                                    color: AppColor.colorBlack),
                                keyboardType: TextInputType.text,
                                cursorColor: AppColor.colorDodgerBlue,
                                focusNode: focPassword,
                                controller: conPassword,
                                obscureText: _isHidden,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(top: 14.0.sp),
                                  hintText: AppString.hintPassword,
                                  errorText: _password
                                      ? AppErrorString.errorPassword
                                      : null,
                                  prefixIcon: Icon(
                                    AppIcon.IC_LOCK,
                                    size: 20.0.sp,
                                    color: AppColor.colorGray,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isHidden
                                          ? AppIcon.IC_VISIBILITY_OFF
                                          : AppIcon.IC_VISIBILITY_ON,
                                      size: 20.0.sp,
                                      color: AppColor.colorGray,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isHidden = !_isHidden;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: .5.h,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        AppString.forgotPasswordQu,
                                        style: AppStyle.textViewStyleRegular(
                                            AppColor.colorGray, 12.0.sp),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        AppString.signUp,
                                        style: AppStyle.textViewStyleBold(
                                            AppColor.colorDodgerBlue, 13.0.sp),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 1.0.h,
                              ),
                              Container(
                                  height: 6.5.h,
                                  width: 28.0.w,
                                  child: Platform.isIOS
                                      ? CupertinoButton
                                      : MaterialButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3.0),
                                              side: BorderSide(
                                                  color:
                                                      AppColor.colorDodgerBlue)),
                                          color: AppColor.colorDodgerBlue,
                                          child: Text(
                                            AppString.signIn,
                                            style: AppStyle.textViewStyleBold(
                                                AppColor.colorWhite, 15.0.sp),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              bool valid = validate();
                                              if (!valid) {
                                                Platform.isIOS
                                                    ? Navigator.push(
                                                        context,
                                                        CupertinoPageRoute(
                                                            builder: (context) =>
                                                                DoctorDetailScreen()))
                                                    : Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                DoctorDetailScreen()));
                                              }
                                            });
                                          })),
                              SizedBox(
                                height: 5.0.h,
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                  ),
                ),
        ),
      ),
    );
  }

  validate() {
    bool valid = false;
    if (conMobileNumber.text.length == 0) {
      _mobileNumber = true;
      _mobileNumberValid = false;
      _password = false;
      focMobileNumber.requestFocus();
      valid = true;
    } else if (conMobileNumber.text.length < 10) {
      _mobileNumber = true;
      _mobileNumberValid = true;
      _password = false;
      focMobileNumber.requestFocus();
      valid = true;
    } else if (conPassword.text.length == 0) {
      _mobileNumber = false;
      _mobileNumberValid = false;
      _password = true;
      focPassword.requestFocus();
      valid = true;
    } else {
      _mobileNumber = false;
      _mobileNumberValid = false;
      _password = false;

      valid = false;
    }

    return valid;
  }
}
