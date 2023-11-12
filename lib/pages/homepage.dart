import 'package:carousel_slider/carousel_slider.dart';
import 'package:field_fox/models/daftar_lapangan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> imageSliders = [
    Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 3,
        child: Image.asset(
          'assets/banner_homepage.png',
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 3,
        child: Image.asset(
          'assets/banner2_homepage.png',
          fit: BoxFit.fill,
        ),
      ),
    ),
    Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 3,
        child: Image.asset(
          'assets/banner3_homepage.png',
          fit: BoxFit.fill,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Halo, Guido',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: Icon(
                                FeatherIcons.messageSquare,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {},
                              icon: Icon(
                                FeatherIcons.bell,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        // Icon(
                        //   color: Color.fromARGB(40, 0, 0, 0),
                        //   Icons.location_pin,
                        //   size: 20,
                        // ),
                        // SizedBox(
                        //   width: 5,
                        // ),
                        Text('Lokasi'),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'Yogyakarta',
                                style: TextStyle(color: Color(0xFFF58235)),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 20,
                                color: Color(0xFFF58235),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CarouselSlider(
                  items: imageSliders,
                  carouselController: CarouselController(),
                  options: CarouselOptions(
                    height: 116,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 5),
                    viewportFraction: 1,
                    enlargeCenterPage: false,
                    // aspectRatio: 15 / 5,
                    enableInfiniteScroll: true,
                    // padEnds: false,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          SizedBox(
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 20,
                ),
                MenuLapangan(
                  image: 'assets/bola_basket.png',
                  title: 'Basket',
                ),
                SizedBox(
                  width: 15,
                ),
                MenuLapangan(
                  image: 'assets/bola_futsal.png',
                  title: 'Basket',
                ),
                SizedBox(
                  width: 15,
                ),
                MenuLapangan(
                  image: 'assets/kok_badminton.png',
                  title: 'Basket',
                ),
                SizedBox(
                  width: 15,
                ),
                MenuLapangan(
                  image: 'assets/bola_voli.png',
                  title: 'Basket',
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MenuHomepage(
                  image: 'assets/lapangan.png',
                  title: 'Lapangan',
                ),
                MenuHomepage(
                  image: 'assets/gym.png',
                  title: 'Gym',
                ),
                MenuHomepage(
                  image: 'assets/favorite.png',
                  title: 'Favorit',
                ),
                MenuHomepage(
                  image: 'assets/komunitas.png',
                  title: 'Komunitas',
                ),
                MenuHomepage(
                  image: 'assets/bantuan.png',
                  title: 'Bantuan',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Rekomendasi Lapangan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 290,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 16, right: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final Lapangan lapangan = lapanganList[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: 175,
                      height: 290,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 175,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                                child: Image.asset(
                                  lapangan.imageAsset,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    lapangan.name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Image.asset('assets/rating.png'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: lapanganList.length,
            ),
          )
        ],
      ),
    );
  }
}

class MenuLapangan extends StatelessWidget {
  final String image;
  final String title;

  MenuLapangan({
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 90,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(80, 0, 0, 0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuHomepage extends StatelessWidget {
  final String image;
  final String title;

  MenuHomepage({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              elevation: 3,
              margin: EdgeInsets.zero,
              color: Color(0xFFFFF6EE),
              child: Image.asset(image),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 11),
          )
        ],
      ),
    );
  }
}
