import 'dart:ui';
import 'package:diplom/Authorization/signInPhone.dart';
import 'Registration/signUpPhone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meeting App',
      color: Color(0xFF8A40B8),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Start Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/fon.png"), fit: BoxFit.fill)
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ Container(
                    width: 420,
                    height: 350,
                    child: Neumorphic(
                      padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 52),
                      style: NeumorphicStyle(
                          depth: 5,
                          color: Colors.white,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20)))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Добро пожаловать!',
                                    style: GoogleFonts.manrope(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.7),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, bottom: 7),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    onPrimary: Color(0x8A40B8),
                                    primary: Colors.white,
                                    fixedSize: Size(400, 44),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                      side: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) =>
                                          SignInPhone(),
                                      ));},
                                  child: Text('Авторизация',
                                      style: GoogleFonts.manrope(
                                          color: Color(0xFF444444),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.5)),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 7),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    onPrimary: Colors.white,
                                    primary: Color(0xFF8A40B8),
                                    fixedSize: Size(400, 44),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>
                                                SignUpPhone(),
                                                ));
                                  },
                                  child: Text('Регистрация',
                                      style: GoogleFonts.manrope(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.5)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  child: Divider(color: Colors.black),
                                  width: 90,
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Text(
                                    'или',
                                    style: GoogleFonts.manrope(
                                      color: Color(0xFF444444),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                    )),
                                const SizedBox(
                                  width: 50,
                                ),
                                const SizedBox(
                                  child: Divider(color: Colors.black),
                                  width: 90,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    onPrimary: Color(0x8A40B8),
                                    primary: Colors.white,
                                    fixedSize: Size(400, 44),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6)),
                                      side: BorderSide(color: Colors.black),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Image(
                                          image: AssetImage(
                                              'assets/google_logo.png'),
                                          width: 24,
                                          height: 24
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text('Войти с помощью Google',
                                          style: GoogleFonts.manrope(
                                              color: Color(0xFF444444),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.5)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

