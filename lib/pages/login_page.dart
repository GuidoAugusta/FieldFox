import 'package:field_fox/shared/themes/theme.dart';
import 'package:field_fox/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            'Halo,',
            style: blackTextStyle.copyWith(
              fontSize: 36,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Selamat',
            style: primaryTextStyle.copyWith(
              fontSize: 36,
              fontWeight: semiBold,
            ),
          ),
          Text(
            'Datang',
            style: primaryTextStyle.copyWith(
              fontSize: 36,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: blackColor.withOpacity(0.4),
              ),
              hintText: 'masukkan email kamu',
              hintStyle: blackTextStyle.copyWith(
                fontWeight: normal,
                fontSize: 14,
                color: blackColor.withOpacity(0.4),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                color: blackColor.withOpacity(0.4),
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: blackColor.withOpacity(0.4),
                size: 18,
              ),
              hintText: 'masukkan password kamu',
              hintStyle: blackTextStyle.copyWith(
                fontWeight: normal,
                fontSize: 14,
                color: blackColor.withOpacity(0.4),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Lupa Password?',
                  style: blackTextStyle.copyWith(
                    fontWeight: normal,
                    fontSize: 14,
                    color: blackColor.withOpacity(0.4),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          PrimaryButton(
            title: 'Login',
            onTap: () {},
          ),
          const SizedBox(
            height: 22,
          ),
          Center(
            child: Text(
              'Atau login menggunakan',
              style: blackTextStyle.copyWith(
                fontWeight: normal,
                fontSize: 14,
                color: blackColor.withOpacity(0.4),
              ),
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: blackColor.withOpacity(0.4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/ic_google.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text('Google',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                        color: blackColor.withOpacity(0.4),
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Belum punya akun? ',
                style: blackTextStyle.copyWith(
                  fontWeight: normal,
                  fontSize: 14,
                  color: blackColor.withOpacity(0.4),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Daftar',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 179,
              ),
            ],
          )
        ],
      ),
    );
  }
}
