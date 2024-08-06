import 'package:field_fox/shared/themes/theme.dart';
import 'package:field_fox/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                      'Halo,',
                      style: blackTextStyle.copyWith(
                        fontSize: 36.sp,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Selamat',
                      style: primaryTextStyle.copyWith(
                        fontSize: 36.sp,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Datang',
                      style: primaryTextStyle.copyWith(
                        fontSize: 36.sp,
                        fontWeight: semiBold,
                      ),
                    ),
                    SizedBox(height: 40.h),
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
                    SizedBox(height: 14.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Lupa Password?',
                            style: blackTextStyle.copyWith(
                              fontWeight: normal,
                              fontSize: 14.sp,
                              color: blackColor.withOpacity(0.4),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32.h),
                    PrimaryButton(
                      title: 'Login',
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
                          'Belum punya akun? ',
                          style: blackTextStyle.copyWith(
                            fontWeight: normal,
                            fontSize: 14.sp,
                            color: blackColor.withOpacity(0.4),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text(
                            'Daftar',
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
