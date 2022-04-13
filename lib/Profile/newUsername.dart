import 'package:diplom/Profile/yourProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'eventsProfile.dart';

class newUsernamePage extends StatefulWidget {
  const newUsernamePage({Key? key}) : super(key: key);

  @override
  State<newUsernamePage> createState() => _newUsernameState();
}

class _newUsernameState extends State<newUsernamePage> {
  var controller = TextEditingController();
  bool _isDisabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 10),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Color(0xFF8B41B9),
                      iconSize: 22,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Text(
                      'Новое имя пользователя',
                      style: GoogleFonts.manrope(
                          fontSize: 21,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.7),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 350,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    child: CupertinoTextField(
                                      controller: controller,
                                      placeholder: username,
                                      keyboardType: TextInputType.name,
                                      maxLength: 100,
                                      suffixMode: OverlayVisibilityMode.editing,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.singleLineFormatter,
                                      ],
                                      onChanged: (text) {
                                        setState((){
                                          _isDisabled = text.length == 1;
                                        });
                                      },
                                      suffix: CupertinoButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          controller.clear();
                                        },
                                        child: const Icon(CupertinoIcons.clear,
                                            color: Colors.black),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            color: Color(0xFF444444), width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.arrow_forward),
                                    color: Color(0xFF8B41B9),
                                    onPressed: _isDisabled ? null : () {
                                      username = controller.text;
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
                            ],
                          ),
                        ),
                      ],
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