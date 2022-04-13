import 'dart:ui';
import 'package:diplom/CreateEvent/newEvent.dart';
import 'package:diplom/Events/eventsMain.dart';
import 'package:diplom/Notifications/eventsNotifications.dart';
import 'package:diplom/Settings/eventsSettings.dart';
import 'package:diplom/main.dart';
import 'package:diplom/Profile/yourProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class eventsProfilePage extends StatefulWidget {
  const eventsProfilePage({Key? key}) : super(key: key);

  @override
  State<eventsProfilePage> createState() => _eventsProfileState();
}
String username = 'Oksana Alekseeva';

class _eventsProfileState extends State<eventsProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 16,
                      height: 41,
                    ),
                    Text(
                      'Профиль',
                      style: GoogleFonts.manrope(
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.7,
                          color: Color(0xFF444444)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 380,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Neumorphic(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 10),
                              child: Container(
                                width: 60,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: AssetImage("assets/profile.png"),
                                    fit: BoxFit.none,
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      username.toString(),
                                      style: GoogleFonts.openSans(
                                          fontSize: 21,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.3,
                                          color: Color(0xFF444444)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '+7 (981) 153-35-70',
                                      style: GoogleFonts.openSans(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.3,
                                        color: Color(0xFF777777)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward_ios),
                                    iconSize: 26,
                                    color: Color(0xFF8B41B9),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                yourProfilePage(),
                                          ));
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    style: NeumorphicStyle(
                      color: Color(0xFFF1F1F1),
                      depth: 0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 11),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Статистика',
                          style: GoogleFonts.manrope(
                              fontSize: 25,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.3),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Text('• 10 успешных встреч  \n• 1 друг приглашен в приложение', style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.3,
                              color: Color(0xFF444444)),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFF5F5F5),
                        fixedSize: Size(94, 34),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                title: '',
                              ),
                            ))
                      },
                      child: Text(
                        'Выход',
                        style: GoogleFonts.openSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.3,
                          color: Color(0xFFFF5454),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Container(
                      height: 55,
                      width: 380,
                      child: Neumorphic(
                        padding: EdgeInsets.only(
                            left: 16, right: 16, top: 2, bottom: 2),
                        style:
                            NeumorphicStyle(depth: 0, color: Color(0xFFF5F5F5)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              eventsMainPage(),
                                        ))
                                  },
                                  icon: Icon(Icons.home_rounded, size: 30),
                                  color: Color(0xFFB1B1B1),
                                ),
                                IconButton(
                                  onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              eventsNotificationsPage(),
                                        ))
                                  },
                                  icon: Icon(Icons.notifications_none_rounded,
                                      size: 30),
                                  color: Color(0xFFB1B1B1),
                                ),
                                Container(
                                  width: 53,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF8A40B8),
                                          Color(0xFFAB79CA),
                                        ],
                                      )),
                                  child: IconButton(
                                      onPressed: () => {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  newEventPage(),
                                            ))
                                      },
                                      icon: Icon(Icons.add),
                                      color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.account_circle_outlined,
                                      size: 30, color: Color(0xFF444444)),
                                ),
                                IconButton(
                                    onPressed: () => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    eventsSettingsPage(),
                                              ))
                                        },
                                    icon:
                                        Icon(Icons.settings_outlined, size: 30),
                                    color: Color(0xFFB1B1B1)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
