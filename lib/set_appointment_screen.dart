import 'dart:io';

import 'package:doctor_appointment/your_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

import 'common/colors.dart';
import 'common/comman.dart';

import 'common/string.dart';

class SetAppointmentScreen extends StatefulWidget {
  const SetAppointmentScreen({Key key}) : super(key: key);

  @override
  _SetAppointmentScreenState createState() => _SetAppointmentScreenState();
}

class _SetAppointmentScreenState extends State<SetAppointmentScreen> {
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
                    AppString.setAppointment,
                    style: AppStyle.textViewStyleUltraBold(
                        AppColor.colorWhite, 17.0.sp),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.0.h, left: 4.0.w, right: 4.0.w),
              padding: EdgeInsets.only(top: 1.0.h, left: 3.0.w, right: 3.0.w),
              height: 85.0.h,
              width: 100.0.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: AppColor.colorWhite),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 2.0.h,left: 3.0.w,right: 3.0.w),
                    height: 15.0.h,
                    width: 100.0.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          new BoxShadow(
                              color: AppColor.colorBlare,
                              blurRadius: 5.0,
                              spreadRadius: 10),
                        ],
                        color: AppColor.colorWhite),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 15.0.w,
                          width: 15.0.w,
                          decoration: BoxDecoration(
                            color: AppColor.colorGrayLite,
                            shape: BoxShape.circle
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                              alignment: Alignment.centerLeft,
                              child: Text(
                                AppString.doctorName,
                                style: AppStyle
                                    .textViewStyleUltraBold(
                                    AppColor.colorBlack,
                                    15.0.sp),
                              ),
                            ),
                            Container(
                              child: Text(
                                AppString.liverSpecialist,
                                style:
                                AppStyle.textViewStyleRegular(
                                    AppColor.colorDodgerBlue,
                                    11.0.sp),
                              ),
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      color: AppColor.colorLiteOrange,
                                      size: 16.0.sp,
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      color: AppColor.colorLiteOrange,
                                      size: 16.0.sp,
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      color: AppColor.colorLiteOrange,
                                      size: 16.0.sp,
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      color: AppColor.colorLiteOrange,
                                      size: 16.0.sp,
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      color: AppColor.colorLiteOrange,
                                      size: 16.0.sp,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Container(

                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            children: [

                                  Container(
                                      child: Text(
                                        '\$132',
                                        style: AppStyle
                                            .textViewStyleRegular(
                                            AppColor.colorGray,
                                            35.0.sp),
                                      )),

                              Container(
                                  child: Text(
                                    'for 15 min',
                                    style:
                                    AppStyle.textViewStyleRegular(
                                        AppColor.colorDodgerBlue,
                                        12.0.sp),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1.5.h),
                    alignment: Alignment.centerLeft,
                    child: Text(AppString.selectDate,style: AppStyle.textViewStyleUltraBold(AppColor.colorBlack, 17.0.sp),),),
                  Container(
                    margin: EdgeInsets.only(top: 1.0.h),
                    padding: EdgeInsets.only(left: 2.0.w,right: 2.0.w),
                    height: 5.0.h,
                    width: 100.0.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColor.colorGrayLite,width: 1)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('25 Augest 2020',style: AppStyle.textViewStyleRegular(AppColor.colorGray, 12.0.sp),),
                        Icon(Icons.date_range,size: 20.0.sp,color: AppColor.colorGray,)
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1.5.h),
                    alignment: Alignment.centerLeft,
                    child: Text(AppString.selectTime,style: AppStyle.textViewStyleUltraBold(AppColor.colorBlack, 17.0.sp),),),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 1.3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                color: AppColor.colorBlare,
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('8:00 am',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('9:00 am',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorDodgerBlue,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('10:00 am',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('11:00 am',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('12:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),


                          ],
                        ),
                        SizedBox(height: 1.3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('1:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('2:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('3:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorDodgerBlue,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('4:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('5:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),


                          ],
                        ),
                        SizedBox(height: 1.3.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorDodgerBlue,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('6:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('7:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('8:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorBlare,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(child: Text('9:00 pm',style: AppStyle.textViewStyleRegular(AppColor.colorBlack, 9.0.sp),),),
                            ),
                            Container(
                              height: 3.0.h,
                              width: 16.0.w,
                              decoration: BoxDecoration(
                                  color: AppColor.colorWhite,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                            ),


                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 17.0.h,
                    width: 100.0.w,
                    margin: EdgeInsets.only(left: 3.0.w,right: 3.0.w,top: 2.0.h),
                    padding: EdgeInsets.only(left: 3.0.w,right: 3.0.w,top: 1.5.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          new BoxShadow(
                              color: AppColor.colorBlare,
                              blurRadius: 5.0,
                              spreadRadius: 10),
                        ],
                        color: AppColor.colorWhite),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 13.0.w,
                          width: 13.0.w,
                          decoration: BoxDecoration(
                              color: AppColor.colorBlare,
                              shape: BoxShape.circle
                          ),
                          child: Center(child: Icon(Icons.alarm,color: AppColor.colorDodgerBlue,size: 23.0.sp,),),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Row(
                             children: [
                               Radio( value: 0,
                                 groupValue: _radioValue,
                                 onChanged: _handleRadioValueChange,),
                               Container(
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text('15 min consulting',style: AppStyle.textViewStyleUltraBold(AppColor.colorBlack, 12.0.sp),),
                                     Text('\$120 + \$12(GST) = \$132.00',style: AppStyle.textViewStyleRegular(AppColor.colorGray, 10.0.sp),)
                                   ],
                                 ),
                               )
                             ],
                           ),
                              Row(
                                children: [
                                  Radio( value: 1,
                                    groupValue: _radioValue,
                                    onChanged: _handleRadioValueChange,),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('30 min consulting',style: AppStyle.textViewStyleUltraBold(AppColor.colorBlack, 12.0.sp),),
                                        Text('\$120 + \$12(GST) = \$132.00',style: AppStyle.textViewStyleRegular(AppColor.colorGray, 10.0.sp),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                              Radio( value: 2,
    groupValue: _radioValue,
    onChanged: _handleRadioValueChange,),

                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('90 min consulting',style: AppStyle.textViewStyleUltraBold(AppColor.colorBlack, 12.0.sp),),
                                        Text('\$120 + \$12(GST) = \$132.00',style: AppStyle.textViewStyleRegular(AppColor.colorGray, 10.0.sp),)
                                      ],
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0.h),
                    width: 100.0.w,
                    height: 5.0.h,
                    child:  Platform.isIOS
                        ? CupertinoButton:MaterialButton(
                      onPressed: (){
                        Platform.isIOS
                            ? Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    YourDetailScreen()))
                            : Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    YourDetailScreen()));
                      },
                      color: AppColor.colorDodgerBlue,
                      child: Text(AppString.next,style: AppStyle.textViewStyleUltraBold(AppColor.colorWhite, 13.0.sp),),
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
}
