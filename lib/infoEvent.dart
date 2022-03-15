import 'dart:ui';
import 'package:diplom/eventsMain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:card_swiper/card_swiper.dart';

class infoEventPage extends StatefulWidget {
  const infoEventPage({Key? key}) : super(key: key);

  @override
  State<infoEventPage> createState() => _infoEventState();
}

class _infoEventState extends State<infoEventPage> {
  var controller = TextEditingController();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Color(0xFF444444)),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

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
                                builder: (context) => eventsMainPage()));
                      },
                      child: Text(
                        'Back',
                        style: GoogleFonts.openSans(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.7,
                            color: Color(0xFF8B41B9)),
                      ),
                    ),
                    Text(
                      'Go to the cafe',
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
                                builder: (context) => eventsMainPage()));
                      },
                      child: Text(
                        'Done',
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
                padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
                child: Container(
                  height: 274,
                  width: 370,
                  child: Neumorphic(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 327,
                              height: 177,
                              child: Swiper(
                                itemBuilder: (BuildContext context, int index) {
                                  return Image.asset(
                                    "assets/cafe.png",
                                    fit: BoxFit.fill,
                                  );
                                },
                                itemCount: 1,
                                itemHeight: 100,
                                itemWidth: 100,
                                viewportFraction: 0.8,
                                scale: 0.9,
                              )
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 17, top: 24),
                          child: Text('Go to the cafe',
                              style: GoogleFonts.manrope(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.3,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 17),
                          child: Row(
                            children: [
                              Text('16:00 - 5st december' + '     3',
                                  style: GoogleFonts.manrope(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.3,
                                      color: Colors.black)),
                              Icon(
                                Icons.person,
                                size: 16,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(top: 16),
                    style: NeumorphicStyle(color: Color(0xFFF2F2F2), depth: 0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            'Invite members   ',
                            style: GoogleFonts.manrope(
                                fontSize: 23,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -0.7,
                                color: Color(0xFF8B41B9)),
                          ),
                          const Icon(
                            Icons.add,
                            color: Color(0xFF8B41B9),
                            size: 28,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
