import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color whiteColor = const Color(0xFFFFFFFF);
Color blackColor = const Color(0xFF000000);
Color primaryColor = const Color.fromARGB(255, 245, 130, 53);
Color whiteTextColor = const Color(0xFFFFFFFF);
Color blackTextColor = const Color(0xFF000000);
Color primaryTextColor = const Color.fromARGB(255, 245, 130, 53);

// Text Themes
TextStyle blackTextStyle = GoogleFonts.inter(
  color: blackColor,
);

TextStyle whiteTextStyle = GoogleFonts.inter(
  color: whiteColor,
);

TextStyle primaryTextStyle = GoogleFonts.inter(
  color: primaryColor,
);

// Font Weights
FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
