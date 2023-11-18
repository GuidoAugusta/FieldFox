import 'package:flutter/material.dart';

import 'package:field_fox/models/daftar_lapangan.dart';

class DetailPage extends StatelessWidget {
  final Lapangan lapangan;

  const DetailPage({Key? key, required this.lapangan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Detail Page'), Text(lapangan.name)],
        ),
      ),
    );
  }
}
