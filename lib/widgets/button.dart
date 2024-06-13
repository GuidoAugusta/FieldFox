import 'package:field_fox/shared/themes/theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final VoidCallback? onTap;
  const PrimaryButton({
    super.key,
    this.height = 52,
    this.width = double.infinity,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(title,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
