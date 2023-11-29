import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:field_fox/models/daftar_lapangan.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class DetailPage extends StatefulWidget {
  final Lapangan lapangan;

  const DetailPage({Key? key, required this.lapangan}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late CarouselController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: InkWell(
      //       onTap: () {
      //         Navigator.pop(context);
      //       },
      //       child: Container(
      //         width: 40,
      //         height: 40,
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(8),
      //         ),
      //         child: Icon(
      //           Icons.arrow_back_ios_new_rounded,
      //           size: 20,
      //           color: Color(0xFFF58235),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    CarouselSlider.builder(
                      itemBuilder: (context, index, realIndex) {
                        return ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          child: Container(
                            width: double.infinity,
                            child: Image.asset(
                              widget.lapangan.imageAsset[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: widget.lapangan.imageAsset.length,
                      options: CarouselOptions(
                        height: 250,
                        autoPlay: false,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      child: DotsIndicator(
                        dotsCount: widget.lapangan.imageAsset.length,
                        position: currentIndex,
                        onTap: (index) {
                          controller.animateToPage(index);
                        },
                        decorator: DotsDecorator(
                          spacing: EdgeInsets.fromLTRB(2, 0, 2, 6),
                          color: Colors.white,
                          activeColor: Colors.orange,
                          size: const Size.square(10),
                          activeSize: const Size(35, 10),
                          activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 32,
                      left: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 20,
                            color: Color(0xFFF58235),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.lapangan.name,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    color: Color.fromARGB(179, 0, 0, 0),
                                    FeatherIcons.mapPin,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.lapangan.alamatSingkat,
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/star.png'),
                              SizedBox(
                                width: 3,
                              ),
                              Text('4.4'),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 80,
                        color: Color(0x2EDADADA),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.asset('assets/map.png'),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Flexible(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.lapangan.alamatLengkap,
                                      style: TextStyle(fontSize: 10),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Row(
                                            children: [
                                              Icon(
                                                color: Color.fromARGB(
                                                    255, 47, 72, 214),
                                                FeatherIcons.mapPin,
                                                size: 14,
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                'Buka di Maps',
                                                style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300,
                                                  color: Color.fromARGB(
                                                      255, 47, 72, 214),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Fasilitas',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/tempatParkir.png'),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Tempat Parkir',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/wifi.png'),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Wifi',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/toilet.png'),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Toilet',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/kantin.png'),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Kantin',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                        'Tentang',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.lapangan.tentang,
                        style: TextStyle(
                          color: Color(0x99000000),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Informasi Tempat',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Text(
                            'Jumlah Court',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 52,
                          ),
                          Text(
                            ':',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.lapangan.jmlCourt,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Jam Operasional',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Text(
                            ':',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.lapangan.jamOperasional,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            'Kategori Lapangan',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            ':',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            widget.lapangan.kategori,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: Color.fromARGB(50, 158, 158, 158)))),
            width: double.infinity,
            height: 65,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Booking"),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: const Color(0xFFF58235)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 50,
                    width: 55,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        FeatherIcons.messageSquare,
                        size: 25,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color(0xFFF58235),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
