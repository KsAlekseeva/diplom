import 'dart:ui';
import 'package:diplom/Events/eventsMain.dart';
import 'package:diplom/Notifications/eventsNotifications.dart';
import 'package:diplom/Profile/eventsProfile.dart';
import 'package:diplom/Profile/newPhoto.dart';
import 'package:diplom/Settings/eventsSettings.dart';
import 'package:diplom/Profile/newUsername.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class yourProfilePage extends StatefulWidget {
  const yourProfilePage({Key? key}) : super(key: key);

  @override
  State<yourProfilePage> createState() => _yourProfileState();
}

class _yourProfileState extends State<yourProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 13, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  eventsProfilePage()
                            ));
                      },
                      child: Text(
                        'Назад',
                        style: GoogleFonts.openSans(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.7,
                            color: Color(0xFF8B41B9)),
                      ),
                    ),
                    Text(
                      'Ваш профиль',
                      style: GoogleFonts.openSans(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.7,
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    eventsProfilePage()
                            ));
                      },
                      child: Text(
                        'Готово',
                        style: GoogleFonts.openSans(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.7,
                            color: Color(0xFF8B41B9)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 380,
                  height: 460,
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
                                      'Oksana Alekseeva',
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
                                      '+7 (911) 385-32-32',
                                      style: GoogleFonts.openSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.3,
                                          color: Color(0xFF8E8E8E)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            width: 360,
                            height: 65,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Neumorphic(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Изменить фото',
                                      style: GoogleFonts.manrope(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: -0.3,
                                          color: Color(0xFF454545)),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward_ios),
                                    color: Color(0xFF8B41B9),
                                    iconSize: 22,
                                    onPressed: () {
                                      Navigator.push(context,
                                      MaterialPageRoute(
                                      builder: (context) => newPhotoPage(),
                                      ));
                                    },
                                  )
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
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                            width: 360,
                            height: 65,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Neumorphic(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Изменить имя пользователя',
                                      style: GoogleFonts.manrope(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: -0.3,
                                          color: Color(0xFF454545)),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward_ios),
                                    color: Color(0xFF8B41B9),
                                    iconSize: 22,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => newUsernamePage(),
                                          ));
                                    },
                                  )
                                ],
                              ),
                              style: NeumorphicStyle(
                                color: Color(0xFFF1F1F1),
                                depth: 0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    style: NeumorphicStyle(
                      color: Color(0xFFF5F5F5),
                      depth: 0,
                    ),
                  ),
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
                                      onPressed: () => {},
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
