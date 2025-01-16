// import 'package:field_fox/pages/main_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   // status show password
//   bool _isPasswordObscure = true;
//   bool _isPasswordConfirmationObscure = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Stack(
//                 children: [
//                   Image.asset('assets/ellipse2.png'),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 44, left: 20),
//                     child: InkWell(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Container(
//                         width: 40,
//                         height: 40,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Icon(
//                           Icons.arrow_back_ios_new_rounded,
//                           size: 20,
//                           color: Color(0xFFF58235),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 44,
//           ),
//           Center(
//             child: Text(
//               'FieldFox',
//               style: TextStyle(
//                   fontSize: 32,
//                   fontWeight: FontWeight.w700,
//                   color: Color(0xFFF58235)),
//             ),
//           ),
//           SizedBox(
//             height: 83,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 15, right: 15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Nama Lengkap',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                     hintText: 'masukkan nama',
//                     hintStyle: TextStyle(color: Color(0x40000000)),
//                     hoverColor: Colors.transparent,
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Text(
//                   'Email',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Masukkan email',
//                     hintStyle: TextStyle(color: Color(0x40000000)),
//                     hoverColor: Colors.transparent,
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Text(
//                   'Password',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       onPressed: () {
//                         setState(() {
//                           _isPasswordObscure = !_isPasswordObscure;
//                         });
//                       },
//                       icon: Icon(
//                         _isPasswordObscure
//                             ? FeatherIcons.eye
//                             : FeatherIcons.eyeOff,
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                     hintText: 'Masukkan password',
//                     hintStyle: TextStyle(color: Color(0x40000000)),
//                     hoverColor: Colors.transparent,
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                   ),
//                   obscureText: _isPasswordObscure,
//                   obscuringCharacter: '●',
//                 ),
//                 SizedBox(
//                   height: 12,
//                 ),
//                 Text(
//                   'Konfirmasi Password',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                     suffixIcon: IconButton(
//                       splashColor: Colors.transparent,
//                       highlightColor: Colors.transparent,
//                       onPressed: () {
//                         setState(() {
//                           _isPasswordConfirmationObscure =
//                               !_isPasswordConfirmationObscure;
//                         });
//                       },
//                       icon: Icon(
//                         _isPasswordConfirmationObscure
//                             ? FeatherIcons.eye
//                             : FeatherIcons.eyeOff,
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                     hintText: 'Masukkan password',
//                     hintStyle: TextStyle(color: Color(0x40000000)),
//                     hoverColor: Colors.transparent,
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                       borderSide: BorderSide(
//                         color: Color(0x33000000),
//                       ),
//                     ),
//                   ),
//                   obscureText: _isPasswordConfirmationObscure,
//                   obscuringCharacter: '●',
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Center(
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       surfaceTintColor: Colors.black,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       backgroundColor: Color(0xFFF58235),
//                       minimumSize: Size(double.infinity, 52),
//                     ),
//                     onPressed: () {
//                       currentIndex = 0;
//                       Navigator.pushNamed(context, '/mainpage');
//                     },
//                     child: Text(
//                       'Register',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
