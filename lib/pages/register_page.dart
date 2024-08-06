import 'package:field_fox/shared/themes/theme.dart';
import 'package:field_fox/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberControllerr = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32.h),
                    Text(
                      'Daftar,',
                      style: blackTextStyle.copyWith(
                        fontSize: 36.sp,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Untuk',
                      style: primaryTextStyle.copyWith(
                        fontSize: 36.sp,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Memulai',
                      style: primaryTextStyle.copyWith(
                        fontSize: 36.sp,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    TextField(
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12.sp,
                      ),
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintText: 'masukkan email kamu',
                        hintStyle: blackTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12.sp,
                          color: blackColor.withOpacity(0.4),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    TextField(
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12.sp,
                      ),
                      controller: phoneNumberControllerr,
                      decoration: InputDecoration(
                        hintText: 'masukkan nomor telepon kamu',
                        hintStyle: blackTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12.sp,
                          color: blackColor.withOpacity(0.4),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    TextField(
                      style: blackTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12.sp,
                      ),
                      controller: passwordController,
                      obscureText: isObscure,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                          icon: (isObscure == true)
                              ? Icon(
                                  Icons.visibility,
                                  color: blackColor.withOpacity(0.4),
                                  size: 18,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: blackColor.withOpacity(0.4),
                                  size: 18,
                                ),
                        ),
                        hintText: 'masukkan password kamu',
                        hintStyle: blackTextStyle.copyWith(
                          fontWeight: light,
                          fontSize: 12.sp,
                          color: blackColor.withOpacity(0.4),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h),
                    PrimaryButton(
                      title: 'Daftar',
                      onTap: () {},
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'sudah punya akun? ',
                          style: blackTextStyle.copyWith(
                            fontWeight: normal,
                            fontSize: 14.sp,
                            color: blackColor.withOpacity(0.4),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Masuk',
                            style: primaryTextStyle.copyWith(
                              fontWeight: semiBold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
