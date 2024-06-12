import 'package:field_fox/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 14, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profil',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Image.asset('assets/profil.png'),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Guido Augusta',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF58235)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '@idoo.au',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'ACCOUNT',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 22,
            ),
            ProfilTile(
              icon: FeatherIcons.user,
              title: 'Data Profil',
            ),
            SizedBox(
              height: 20,
            ),
            ProfilTile(
              icon: FeatherIcons.heart,
              title: 'Favorit',
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'SETTINGS',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ProfilTile(
              icon: FeatherIcons.edit,
              title: 'Atur Profil',
            ),
            SizedBox(
              height: 20,
            ),
            ProfilTile(
              icon: FeatherIcons.lock,
              title: 'Ganti Password',
            ),
            SizedBox(
              height: 20,
            ),
            ProfilTile(
              icon: FeatherIcons.type,
              title: 'Bahasa',
            ),
            SizedBox(
              height: 38,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                //   pageBuilder: (BuildContext context, Animation animation,
                //       Animation secondaryAnimation) {
                //     // return LoginPage();
                //   },
                // ), (Route route) => false);
              },
              child: Text('Keluar'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color(0xFFF58235),
                minimumSize: Size(117, 40),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class ProfilTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const ProfilTile({
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Color(0x70000000),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0x40000000), width: 0.8),
                top: BorderSide.none,
                left: BorderSide.none,
                right: BorderSide.none,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                IconButton(
                  onPressed: () {},
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(CupertinoIcons.chevron_forward),
                  color: Color(0x50000000),
                  iconSize: 20,
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
