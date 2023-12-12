import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuLapanganPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: ListView(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 20,
                        color: Color(0xFFF58235),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Lapangan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              MasonryGridView(
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: [
                  JenisLapangan(
                    nama: 'Basket',
                    image: 'assets/basket.png',
                    navigator: '/basket',
                  ),
                  JenisLapangan(
                    nama: 'Futsal',
                    image: 'assets/futsal.png',
                    navigator: '/futsal',
                  ),
                  JenisLapangan(
                    nama: 'Badminton',
                    image: 'assets/badminton.png',
                    navigator: '/badminton',
                  ),
                  JenisLapangan(
                    nama: 'Voli',
                    image: 'assets/voli.png',
                    navigator: '/voli',
                  ),
                  JenisLapangan(
                    nama: 'Renang',
                    image: 'assets/renang.png',
                    navigator: '/renang',
                  ),
                  JenisLapangan(
                    nama: 'Sepak Bola',
                    image: 'assets/sepakBola.png',
                    navigator: '/sepakbola',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class JenisLapangan extends StatelessWidget {
  final String nama;
  final String image;
  final String navigator;

  JenisLapangan({
    required this.nama,
    required this.image,
    required this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, navigator);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(110, 0, 0, 0),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Center(
            child: Text(
              nama,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
