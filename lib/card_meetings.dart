import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_page/My_Model.dart';

import 'app_colors.dart';

class CardMeetings extends StatelessWidget {
  final DataMeeting data;

  const CardMeetings({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
        child: SizedBox(
          width: 448.w,
          height: 144.h,
          child: Card(
            clipBehavior: Clip.hardEdge,
            elevation: 4,
            shadowColor: AppColors.darkGreyColor,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(28.r))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: AppColors.accentColor,
                          size: 24.r,
                        ),
                        SizedBox(
                          width: 180.w,
                        ),
                        Text(
                          data.meetingName ?? "",
                          style: TextStyle(
                              fontSize: 16.sp, color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on,
                            color: AppColors.accentColor, size: 24.r),
                        SizedBox(
                          width: 170.w,
                        ),
                        Text(
                          'الكويت , الكويت',
                          style: TextStyle(
                              fontSize: 12.sp, color: AppColors.darkGreyColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.r,
                    ),
                    Row(
                      children: [
                        Icon(Icons.account_tree_outlined,
                            color: AppColors.accentColor, size: 24.r),
                        SizedBox(
                          width: 225.w,
                        ),
                        Text(
                          ' خدمة',
                          style: TextStyle(
                              fontSize: 12.sp, color: AppColors.darkGreyColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 16.w,
                ),
                Padding(
                  padding: EdgeInsets.all(24.0.r),
                  child: Container(
                    width: 65.w,
                    height: 65.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/gaber_alaly-logo 3.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
