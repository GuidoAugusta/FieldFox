import 'package:flutter/material.dart';

class KomunitasPage extends StatelessWidget {
  const KomunitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
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
        ),
        title: Text(
          'Komunitas',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Text('Komunitas Page'),
      ),
    );
  }
}
