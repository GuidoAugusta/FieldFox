import 'package:field_fox/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final double width;
  final String title;
  final VoidCallback? onTap;
  const PrimaryButton({
    super.key,
    this.width = double.infinity,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: width,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.r),
          child: Center(
            child: Text(title,
                style: whiteTextStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: semiBold,
                ),
                textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
