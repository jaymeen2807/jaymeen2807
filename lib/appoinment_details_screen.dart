

import 'dart:io';

import 'package:doctor_appointment/common/colors.dart';
import 'package:doctor_appointment/common/comman.dart';
import 'package:doctor_appointment/common/images.dart';
import 'package:doctor_appointment/common/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import 'doctor_detail_screen.dart';

class AppointmentDetailScreen extends StatefulWidget {
  const AppointmentDetailScreen({Key key}) : super(key: key);

  @override
  _AppointmentDetailScreenState createState() =>
      _AppointmentDetailScreenState();
}

class _AppointmentDetailScreenState extends State<AppointmentDetailScreen> {
  int _radioValue = 0;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    SizerUtil().toString();
    return  Platform.isIOS
        ? CupertinoPageScaffold: Scaffold(
      backgroundColor: AppColor.colorBackGround,
      body: Platform.isIOS
          ? CupertinoScrollbar: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10.0.h, left: 4.0.w, right: 4.0.w),
          height: 100.0.h,
          width: 100.0.w,
          decoration: BoxDecoration(
            color: AppColor.colorWhite,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 2.5.h, left: 3.0.w),
                child: Text(
                  AppString.appointmentDetail,
                  style: AppStyle.textViewStyleUltraBold(
                      AppColor.colorBlack, 17.0.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.name,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            'Josifa Mariya',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.age,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            '45',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.patientSex,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            'Female',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.patientID,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            '78451K',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.date,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            '22 Dec,2020',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.time,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            '03:00pm-04:00pm',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.chamber,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            'Modern Hospital',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 40.0.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.roomNo,
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorGray, 13.0.sp),
                          ),
                          Text(
                            '250',
                            style: AppStyle.textViewStyleRegular(
                                AppColor.colorBlack, 14.0.sp),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.free,
                        style: AppStyle.textViewStyleRegular(
                            AppColor.colorGray, 13.0.sp),
                      ),
                      Text(
                        '\$250',
                        style: AppStyle.textViewStyleRegular(
                            AppColor.colorBlack, 14.0.sp),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 3.0.h, left: 3.0.w, right: 3.0.w),
                child: Text(
                  AppString.payment,
                  style: AppStyle.textViewStyleUltraBold(
                      AppColor.colorBlack, 17.0.sp),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                padding: EdgeInsets.only(left: 2.0.w, right: 2.0.w),
                height: 6.0.h,
                width: 100.0.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColor.colorGrayLite, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        AppString.cash,
                        style: AppStyle.textViewStyleRegular(
                            AppColor.colorGray, 14.0.sp),
                      ),
                    ),
                    Container(child:      Radio( value: 0,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,),)

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                padding: EdgeInsets.only(left: 2.0.w, right: 2.0.w),
                height: 6.0.h,
                width: 100.0.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColor.colorGrayLite, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:4.0.h,
                  child: Image.asset(AppImage.card,fit: BoxFit.fill,),
                    ),
                    Container(child:      Radio( value: 1,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,),)

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 3.0.w,right: 3.0.w,top: 2.0.h),
                child:  Platform.isIOS
                    ? CupertinoScrollbar:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3.0.w),
                        height: 10.0.h,
                        width: 35.0.w,
                        decoration: BoxDecoration(
                          color: AppColor.colorGray,
                          borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3.0.w),
                        height: 10.0.h,
                        width: 35.0.w,
                        decoration: BoxDecoration(
                            color: AppColor.colorGray,
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 3.0.w),
                        padding: EdgeInsets.only(left: 7.0.w,right: 4.0.w),
                        height: 10.0.h,
                        width: 35.0.w,
                        decoration: BoxDecoration(
                            color: AppColor.colorGrayLite,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Text(
                            AppString.addNewCard,style: AppStyle.textViewStyleRegular(AppColor.colorGray, 14.0.sp),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 2.0.h, left: 3.0.w, right: 3.0.w),
                padding: EdgeInsets.only(left: 2.0.w, right: 2.0.w),
                height: 6.0.h,
                width: 100.0.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColor.colorGrayLite, width: 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        AppString.mobileBanking,
                        style: AppStyle.textViewStyleRegular(
                            AppColor.colorGray, 14.0.sp),
                      ),
                    ),
                    Container(child:      Radio( value: 2,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,),)

                  ],
                ),
              ),
              GestureDetector(
                onTap: onRequestSend,
                child: Container(
                  width: 100.0.w,
                  height: 6.0.h,
                  margin: EdgeInsets.only(left: 3.0.w,right: 3.0.w,top: 4.0.h),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                  color: AppColor.colorBackGround),
                  child: Center(child: Text(AppString.sendAppointmentRequest,style: AppStyle.textViewStyleUltraBold(AppColor.colorWhite, 13.0.sp),),),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
  onRequestSend(){
    showDialog(
        context: context,
        builder: (context) {
          return  Platform.isIOS
              ? CupertinoAlertDialog:AlertDialog(
            content: Text('Your Appointment Request Send Successfully',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 13.0.sp),),
            actions: [
             Container(
               margin: EdgeInsets.only(right: 3.0.w),
               child:  MaterialButton(

                 child: Text('ok',style: AppStyle.textViewStyleUltraBold(AppColor.colorWhite, 13.0.sp),),
                 onPressed: () {
                   Platform.isIOS? Navigator.push(
                       context, CupertinoPageRoute(builder: (context) => DoctorDetailScreen())): Navigator.push(
                       context, MaterialPageRoute(builder: (context) => DoctorDetailScreen()));
                 },
                 color: AppColor.colorBackGround,
               ),
             )
            ],
          );
        });
  }
}
