import 'dart:io';

import 'package:doctor_appointment/common/colors.dart';
import 'package:doctor_appointment/common/comman.dart';
import 'package:doctor_appointment/common/images.dart';
import 'package:doctor_appointment/common/string.dart';
import 'package:doctor_appointment/set_appointment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

class DoctorDetailScreen extends StatefulWidget {
  const DoctorDetailScreen({Key key}) : super(key: key);

  @override
  _DoctorDetailScreenState createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  @override
  Widget build(BuildContext context) {
    SizerUtil().toString();
    return   Platform.isIOS
        ? CupertinoPageScaffold:Scaffold(
      backgroundColor: AppColor.colorBackGround,
      body:  Platform.isIOS
          ? CupertinoScrollbar:SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 10.0.h),
                child: Text(
                  AppString.doctorDetail,
                  style: AppStyle.textViewStyleUltraBold(
                      AppColor.colorWhite, 17.0.sp),
                ),
              ),
              Container(
                height: 100.0.h,
                margin: EdgeInsets.only(left: 4.0.w, right: 4.0.w, top: 2.0.h),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0.0.h,
                      left: 0.0.w,
                      right: 0.0.w,
                      child: Container(
                        height: 25.0.h,
                        width: 100.0.w,
                        decoration: BoxDecoration(
                            color: AppColor.colorGrayLite,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.person,size: 80.0.sp,color: AppColor.colorGray,),
                      ),
                    ),
                    Positioned(
                        top: 20.0.h,
                        left: 0.0.w,
                        right: 0.0.w,
                        child: Container(
                          height: 70.0.h,
                          width: 100.0.w,
                          decoration: BoxDecoration(
                              color: AppColor.colorWhite,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                          child: Column(
                            children: [
                              Container(

                                child: Row(
                                  children: [
                                    Container(
                                      width: 47.0.w,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 2.0.h,left: 3.0.w
                                            ),
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              AppString.doctorName,
                                              style: AppStyle
                                                  .textViewStyleUltraBold(
                                                      AppColor.colorBlack,
                                                      20.0.sp),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                            EdgeInsets.only(left: 3.0.w),
                                            child: Text(
                                              AppString.liverSpecialist,
                                              style:
                                                  AppStyle.textViewStyleRegular(
                                                      AppColor.colorDodgerBlue,
                                                      13.0.sp),
                                            ),
                                          ),
                                          Container(
                                              margin:
                                              EdgeInsets.only(left: 2.0.w),
                                              child: Row(
                                            children: [
                                              Icon(
                                                Icons.star_rounded,
                                                color: AppColor.colorLiteOrange,
                                                size: 20.0.sp,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: AppColor.colorLiteOrange,
                                                size: 20.0.sp,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: AppColor.colorLiteOrange,
                                                size: 20.0.sp,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: AppColor.colorLiteOrange,
                                                size: 20.0.sp,
                                              ),
                                              Icon(
                                                Icons.star_rounded,
                                                color: AppColor.colorLiteOrange,
                                                size: 20.0.sp,
                                              ),
                                            ],
                                          )),
                                          Container(
                                            margin:
                                            EdgeInsets.only(left: 2.0.w),
                                            child: Row(
                                              children: [
                                                Container(
                                                  child: Icon(
                                                    Icons.watch_later_outlined,
                                                    size: 17.0.sp,
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(
                                                      left: 1.5.w),
                                                  child: Text(
                                                    '05:00pm - 08:00pm',
                                                    style: AppStyle
                                                        .textViewStyleRegular(
                                                            AppColor.colorGray,
                                                            10.0.sp),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: 3.0.h, left: 7.0.w),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                margin: EdgeInsets.only(
                                    top: 1.5.h, left: 4.5.w, right: 4.5.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 38.0.w,
                                      height: 10.0.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColor.colorDodgerBlue),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              AppString.totalPatients,
                                              style:
                                                  AppStyle.textViewStyleRegular(
                                                      AppColor.colorWhite,
                                                      11.0.sp),
                                            ),
                                            Text('12,265',
                                                style: AppStyle
                                                    .textViewStyleRegular(
                                                        AppColor.colorWhite,
                                                        15.0.sp))
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 38.0.w,
                                      height: 10.0.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColor.colorLiteOrange),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              AppString.yearsOfExperience,
                                              style:
                                                  AppStyle.textViewStyleRegular(
                                                      AppColor.colorWhite,
                                                      11.0.sp),
                                            ),
                                            Text('35y',
                                                style: AppStyle
                                                    .textViewStyleRegular(
                                                        AppColor.colorWhite,
                                                        15.0.sp))
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 15.0.h,
                                margin: EdgeInsets.only(
                                    left: 4.0.w, right: 4.0.w, top: 2.0.h),
                                padding: EdgeInsets.all(2.0.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                          color: AppColor.colorBlare,
                                          blurRadius: 10.0,
                                          spreadRadius: 10),
                                    ],
                                    color: AppColor.colorWhite),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: .5.h),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        AppString.bio,
                                        style: AppStyle.textViewStyleUltraBold(
                                            AppColor.colorBlack, 15.0.sp),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        AppString.bioDetail,
                                        style: AppStyle.textViewStyleRegular(
                                            AppColor.colorGray, 11.0.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 15.0.h,
                                margin: EdgeInsets.only(
                                    left: 4.0.w, right: 4.0.w, top: 2.0.h),
                                padding: EdgeInsets.all(2.0.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      new BoxShadow(
                                          color: AppColor.colorBlare,
                                          blurRadius: 10.0,
                                          spreadRadius: 10),
                                    ],
                                    color: AppColor.colorWhite),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: .5.h),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        AppString.treatment,
                                        style: AppStyle.textViewStyleUltraBold(
                                            AppColor.colorBlack, 15.0.sp),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        AppString.treatmentDetail,
                                        style: AppStyle.textViewStyleRegular(
                                            AppColor.colorGray, 11.0.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 10.0.h,
        padding: EdgeInsets.only(top: 0.5.h),
        color: AppColor.colorWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(child: Icon(Icons.home_outlined,size: 30.0.sp,color: Colors.grey,),),
            GestureDetector(
              onTap: (){
                Platform.isIOS
                    ? Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) =>
                            SetAppointmentScreen()))
                    : Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SetAppointmentScreen()));
              },
              child: Container(child: Column(children: [
                Container(
                  height: 5.0.h,
                  width: 5.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.colorWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Icon(Icons.date_range_outlined,color: AppColor.colorDodgerBlue,size: 15.0.sp,),

                  ),
                Container(
                  margin: EdgeInsets.only(top: 0.8.h),
                  child: Text(AppString.bookAppointment,style: AppStyle.textViewStyleRegular(AppColor.colorDodgerBlue, 13.0.sp),),
                )

              ],),),
            ),
            Container(child: Column(children: [
              Container(
                height: 5.0.h,
                width: 5.0.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.colorWhite,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.rate_review_outlined,color: AppColor.colorDodgerBlue,size: 15.0.sp,),

              ),
              Container(
                margin: EdgeInsets.only(top: 0.8.h),
                child: Text(AppString.review,style: AppStyle.textViewStyleRegular(AppColor.colorDodgerBlue, 13.0.sp),),
              )

            ],),)
          ],
        ),
      ),
    );
  }
}
