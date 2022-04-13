import 'dart:ui';
import 'package:diplom/CreateEvent/addDate.dart';
import 'package:diplom/CreateEvent/newEvent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';

class chooseDatePage extends StatefulWidget {
  const chooseDatePage({Key? key}) : super(key: key);

  @override
  State<chooseDatePage> createState() => _chooseDateState();
}
List listdate = [
];

class _chooseDateState extends State<chooseDatePage> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Выбор даты и времени',
                      style: GoogleFonts.openSans(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.7,
                          color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
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
                padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
                child: Container(
                  height: 200,
                  width: 350,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Container(
                          height: 30,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                listdate[index].adddate +
                                    ' с ' +
                                    listdate[index].timefrom +
                                    ' до ' +
                                    listdate[index].timeto,
                                overflow: TextOverflow.fade,
                                style: GoogleFonts.openSans(
                                    color: Colors.black,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600),
                              ),
                              IconButton(
                                  onPressed: () {
                                  },
                                  icon: const Icon(Icons.clear),
                                  iconSize: 20,
                                  color: Colors.black),
                            ],
                          ),
                        ),
                      );
                    },
                    shrinkWrap: true,
                    itemCount: listdate.length,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Color(0xFF8A40B8),
                        fixedSize: Size(275, 44),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => addDatePage()));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Добавить дату и время',
                            style: GoogleFonts.manrope(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.7,
                                color: Colors.white),
                          ),
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
