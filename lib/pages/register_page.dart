import 'package:field_fox/shared/themes/theme.dart';
import 'package:field_fox/widgets/button.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              'Daftar,',
              style: blackTextStyle.copyWith(
                fontSize: 36,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Untuk',
              style: primaryTextStyle.copyWith(
                fontSize: 36,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'Memulai',
              style: primaryTextStyle.copyWith(
                fontSize: 36,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              controller: emailController,
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
              controller: phoneController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.phone_android_rounded,
                  color: blackColor.withOpacity(0.4),
                ),
                hintText: 'masukkan nomor telepon kamu',
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
              controller: passwordController,
              obscureText: isObscure,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: blackColor.withOpacity(0.4),
                ),
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
                          Icons.visibility,
                          color: blackColor.withOpacity(0.4),
                          size: 18,
                        ),
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
              height: 22,
            ),
            PrimaryButton(
              title: 'Daftar',
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
                    Text(
                      'Google',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold,
                        color: blackColor.withOpacity(0.4),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun? ',
                  style: blackTextStyle.copyWith(
                    fontWeight: normal,
                    fontSize: 14,
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
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 179,
            ),
          ],
        ),
      ),
    );
  }
}
