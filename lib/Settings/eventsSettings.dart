import 'dart:ui';
import 'package:diplom/Events/eventsMain.dart';
import 'package:diplom/Notifications/eventsNotifications.dart';
import 'package:diplom/Profile/eventsProfile.dart';
import 'package:diplom/Settings/newNumber.dart';
import 'package:diplom/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class eventsSettingsPage extends StatefulWidget {
  const eventsSettingsPage({Key? key}) : super(key: key);

  @override
  State<eventsSettingsPage> createState() => _eventsSettingsState();
}

class _eventsSettingsState extends State<eventsSettingsPage> {
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
                      'Settings',
                      style: GoogleFonts.manrope(
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.7, color: Color(0xFF444444)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Container(
                  width: 380,
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
                            'Change phone number',
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
                                  builder: (context) =>
                                      newNumberPage(),
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
                padding: const EdgeInsets.only(left: 20, top: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        alignment: Alignment.centerLeft,
                        primary: Color(0xFFF5F5F5),
                        fixedSize: Size(380, 65),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: () => {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                            title: const Text('Are you sure you want to delete your account?', style: TextStyle(color: Colors.black, fontSize: 20),),
                            content: const Text('Your account, all friends \nand statistics will be deleted', style: TextStyle(color: Colors.black, fontSize: 15),),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'Refuse'),
                                child: const Text('Refuse', style: TextStyle(color: Colors.black, fontSize: 16)),
                              ),
                              TextButton(
                                onPressed: () =>Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MyHomePage(title: ''),
                                    )), 
                                child: const Text('Accept', style: TextStyle(color: Colors.black, fontSize: 16)),
                              ),
                            ],
                          ),
                        ),
                      },
                      child: Text(
                        'Delete account',
                        style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
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
                                      onPressed: () => {},
                                      icon: Icon(Icons.add),
                                      color: Colors.white),
                                ),
                                IconButton(
                                    onPressed: () => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    eventsProfilePage(),
                                              )),
                                        },
                                    icon: Icon(Icons.account_circle_outlined,
                                        size: 30),
                                    color: Color(0xFFB1B1B1)),
                                IconButton(
                                  onPressed: null,
                                  icon: Icon(Icons.settings_outlined,
                                      size: 30, color: Color(0xFF444444)),
                                ),
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
