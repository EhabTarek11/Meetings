import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/app_colors.dart';

class SideNavItem extends StatefulWidget {
  const SideNavItem({
    super.key,
    required this.title,
    required this.iconPath,
    this.isSelected = false,
  });
  final String title, iconPath;
  final bool isSelected;
  @override
  State<SideNavItem> createState() => _SideNavItemState();
}

class _SideNavItemState extends State<SideNavItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(40.w, 0, 0, 0),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 24.w, 0),
        child: Container(
          width: 232.w,
          height: 40.h,
          decoration: BoxDecoration(
              color: widget.isSelected ? AppColors.primaryColor : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                    fontSize: 14.sp,
                    color: widget.isSelected
                        ? Colors.white
                        : AppColors.accentColor),
              ),
              SizedBox(width: 16.w),
              SvgPicture.asset(
                widget.iconPath,
                height: 24.h,
                width: 24.w,
                color: widget.isSelected ? Colors.white : AppColors.accentColor,
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ),
      ),
    );
  }
}
