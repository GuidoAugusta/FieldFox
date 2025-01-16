import 'package:field_fox/pages/badminton_page.dart';
import 'package:field_fox/pages/bantuan_page.dart';
import 'package:field_fox/pages/basket_page.dart';
import 'package:field_fox/pages/chat_page.dart';
import 'package:field_fox/pages/favorit_page.dart';
import 'package:field_fox/pages/futsal_page.dart';
import 'package:field_fox/pages/gym_page.dart';
import 'package:field_fox/pages/homepage.dart';
import 'package:field_fox/pages/komunitas_page.dart';
import 'package:field_fox/pages/login_page.dart';
import 'package:field_fox/pages/main_page.dart';
import 'package:field_fox/pages/menu_lapangan_page.dart';
import 'package:field_fox/pages/notifikasi_page.dart';
import 'package:field_fox/pages/register_page.dart';
import 'package:field_fox/pages/renang_page.dart';
import 'package:field_fox/pages/sepakbola_page.dart';
import 'package:field_fox/pages/splash_page.dart';
import 'package:field_fox/pages/voli_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        // '/register': (context) => RegisterPage(),
        // '/mainpage': (context) => MainPage(),
        // '/homepage': (context) => HomePage(),
        '/lapangan': (context) => MenuLapanganPage(),
        '/gym': (context) => GymPage(),
        '/favorit': (context) => FavoritePage(),
        '/komunitas': (context) => KomunitasPage(),
        '/bantuan': (context) => BantuanPage(),
        '/notifikasi': (context) => NotifikasiPage(),
        '/chat': (context) => ChatPage(),
        '/basket': (context) => BasketPage(),
        '/futsal': (context) => FutsalPage(),
        '/badminton': (context) => BadmintonPage(),
        '/voli': (context) => VoliPage(),
        '/sepakbola': (context) => SepakBolaPage(),
        '/renang': (context) => RenangPage(),
      },
    );
  }
}
