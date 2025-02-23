// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:field_fox/models/daftar_lapangan.dart';
// import 'package:field_fox/pages/detail_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final List<Widget> imageSliders = [
//     Container(
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         elevation: 3,
//         child: Image.asset(
//           'assets/banner_homepage.png',
//           fit: BoxFit.fill,
//         ),
//       ),
//     ),
//     Container(
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         elevation: 3,
//         child: Image.asset(
//           'assets/banner2_homepage.png',
//           fit: BoxFit.fill,
//         ),
//       ),
//     ),
//     Container(
//       child: Card(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         elevation: 3,
//         child: Image.asset(
//           'assets/banner3_homepage.png',
//           fit: BoxFit.fill,
//         ),
//       ),
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 20, right: 20, top: 15),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Halo, Guido',
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             IconButton(
//                               padding: EdgeInsets.zero,
//                               constraints: BoxConstraints(),
//                               splashColor: Colors.transparent,
//                               highlightColor: Colors.transparent,
//                               onPressed: () {
//                                 Navigator.pushNamed(context, '/chat');
//                               },
//                               icon: Icon(
//                                 FeatherIcons.messageSquare,
//                                 size: 30,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 20,
//                             ),
//                             IconButton(
//                               padding: EdgeInsets.zero,
//                               constraints: BoxConstraints(),
//                               splashColor: Colors.transparent,
//                               highlightColor: Colors.transparent,
//                               onPressed: () {
//                                 Navigator.pushNamed(context, '/notifikasi');
//                               },
//                               icon: Icon(
//                                 FeatherIcons.bell,
//                                 size: 30,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           color: Color.fromARGB(80, 0, 0, 0),
//                           FeatherIcons.mapPin,
//                           size: 14,
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Text(
//                           'Lokasi',
//                           style: TextStyle(
//                             color: Color.fromARGB(80, 0, 0, 0),
//                             fontSize: 12,
//                           ),
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         InkWell(
//                           onTap: () {},
//                           child: Row(
//                             children: [
//                               Text(
//                                 'Yogyakarta',
//                                 style: TextStyle(
//                                     color: Color(0xFFF58235), fontSize: 12),
//                               ),
//                               Icon(
//                                 Icons.keyboard_arrow_down_rounded,
//                                 size: 14,
//                                 color: Color(0xFFF58235),
//                               )
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 10),
//                 child: CarouselSlider(
//                   items: imageSliders,
//                   carouselController: CarouselController(),
//                   options: CarouselOptions(
//                     height: 116,
//                     autoPlay: true,
//                     autoPlayInterval: Duration(seconds: 5),
//                     viewportFraction: 1,
//                     enlargeCenterPage: false,
//                     // aspectRatio: 15 / 5,
//                     enableInfiniteScroll: true,
//                     // padEnds: false,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 30,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 SizedBox(
//                   width: 20,
//                 ),
//                 MenuLapangan(
//                   image: 'assets/bola_basket.png',
//                   title: 'Basket',
//                   navigator: '/basket',
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 MenuLapangan(
//                   image: 'assets/bola_futsal.png',
//                   title: 'Futsal',
//                   navigator: '/futsal',
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 MenuLapangan(
//                   image: 'assets/kok_badminton.png',
//                   title: 'Badminton',
//                   navigator: '/badminton',
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 MenuLapangan(
//                   image: 'assets/bola_voli.png',
//                   title: 'Voli',
//                   navigator: '/voli',
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 20),
//             child: Text(
//               'Menu',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 12,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20, right: 22),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 MenuHomepage(
//                   image: 'assets/lapangan.png',
//                   title: 'Lapangan',
//                   navigator: '/lapangan',
//                 ),
//                 MenuHomepage(
//                   image: 'assets/gym.png',
//                   title: 'Gym',
//                   navigator: '/gym',
//                 ),
//                 MenuHomepage(
//                   image: 'assets/favorite.png',
//                   title: 'Favorit',
//                   navigator: '/favorit',
//                 ),
//                 MenuHomepage(
//                   image: 'assets/komunitas.png',
//                   title: 'Komunitas',
//                   navigator: '/komunitas',
//                 ),
//                 MenuHomepage(
//                   image: 'assets/bantuan.png',
//                   title: 'Bantuan',
//                   navigator: '/bantuan',
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 22,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 20),
//             child: Text(
//               'Rekomendasi Lapangan',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           SizedBox(
//             height: 290,
//             child: ListView.builder(
//               padding: EdgeInsets.only(left: 16, right: 10),
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 final Lapangan lapangan = lapanganList[index];
//                 return RekomendasiLapangan(lapangan: lapangan);
//               },
//               itemCount: lapanganList.length,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class RekomendasiLapangan extends StatelessWidget {
//   const RekomendasiLapangan({
//     super.key,
//     required this.lapangan,
//   });

//   final Lapangan lapangan;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 6),
//       child: InkWell(
//         onTap: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return DetailPage(lapangan: lapangan);
//           }));
//         },
//         child: Container(
//           width: 175,
//           height: 290,
//           child: Card(
//             elevation: 5,
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   width: 175,
//                   height: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(8),
//                         topRight: Radius.circular(8)),
//                   ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(8),
//                       topRight: Radius.circular(8),
//                     ),
//                     child: Image.asset(
//                       lapangan.imageAsset[0],
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
//                   child: SizedBox(
//                     height: 58,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               // height: 38,
//                               width: 115,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Column(
//                                     children: [
//                                       Text(
//                                         lapangan.name,
//                                         style: TextStyle(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 4),
//                               child: Row(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Image.asset('assets/star.png'),
//                                   SizedBox(
//                                     width: 3,
//                                   ),
//                                   Text(
//                                     '4.4',
//                                     style: TextStyle(fontSize: 10),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 4,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 0),
//                           child: UnconstrainedBox(
//                             child: Container(
//                               // width: 90,
//                               // height: 30,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFF58235),
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.fromLTRB(10, 2, 10, 2),
//                                 child: Text(
//                                   lapangan.kategori,
//                                   style: TextStyle(
//                                       fontSize: 10, color: Colors.white),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           Icon(
//                             FeatherIcons.mapPin,
//                             size: 14,
//                             // color: Color(value),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             lapangan.alamatSingkat,
//                             style: TextStyle(
//                               fontSize: 10,
//                               fontWeight: FontWeight.w300,
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Row(
//                         children: [
//                           Icon(
//                             FeatherIcons.clock,
//                             size: 14,
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Text(
//                             lapangan.jamOperasional,
//                             style: TextStyle(
//                               fontSize: 10,
//                               fontWeight: FontWeight.w300,
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(
//                   thickness: 1.2,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Mulai Dari',
//                             style: TextStyle(
//                               color: Color(0xFF5E5E5E),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 1,
//                           ),
//                           Text(
//                             lapangan.hargaMulaiDari,
//                             style: TextStyle(
//                               color: Color(0xFFF48C06),
//                               fontSize: 14,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )
//                         ],
//                       ),
//                       const FavoriteButton(),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MenuLapangan extends StatelessWidget {
//   final String image;
//   final String title;
//   final String navigator;

//   MenuLapangan({
//     required this.image,
//     required this.title,
//     required this.navigator,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(context, navigator);
//       },
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       child: UnconstrainedBox(
//         child: Container(
//           // width: 90,
//           // height: 30,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             border: Border.all(
//               width: 1,
//               color: const Color.fromARGB(80, 0, 0, 0),
//             ),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
//             child: Row(
//               children: [
//                 Image.asset(
//                   image,
//                   width: 18,
//                   height: 18,
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: 12),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MenuHomepage extends StatelessWidget {
//   final String image;
//   final String title;
//   final String navigator;

//   MenuHomepage({
//     required this.image,
//     required this.title,
//     required this.navigator,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(context, navigator);
//       },
//       splashColor: Colors.transparent,
//       highlightColor: Colors.transparent,
//       child: Column(
//         children: [
//           Container(
//             width: 50,
//             height: 50,
//             child: Card(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8)),
//               elevation: 3,
//               margin: EdgeInsets.zero,
//               color: Color.fromARGB(255, 255, 227, 203),
//               child: Image.asset(image),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             title,
//             style: TextStyle(fontSize: 11),
//           )
//         ],
//       ),
//     );
//   }
// }

// class FavoriteButton extends StatefulWidget {
//   const FavoriteButton({super.key});

//   @override
//   State<FavoriteButton> createState() => _FavoriteButtonState();
// }

// class _FavoriteButtonState extends State<FavoriteButton> {
//   bool isFavorite = false;

//   @override
//   Widget build(BuildContext context) {
//     return CircleAvatar(
//       backgroundColor: Color.fromARGB(255, 169, 169, 169),
//       radius: 16,
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             isFavorite = !isFavorite;
//           });
//         },
//         child: CircleAvatar(
//           foregroundColor: Color.fromARGB(255, 169, 169, 169),
//           backgroundColor: Colors.white,
//           radius: 15,
//           child: isFavorite
//               ? Icon(
//                   Icons.favorite,
//                   color: Colors.red,
//                   size: 14,
//                 )
//               : Icon(
//                   Icons.favorite_border,
//                   size: 14,
//                 ),
//         ),
//       ),
//     );
//   }
// }
