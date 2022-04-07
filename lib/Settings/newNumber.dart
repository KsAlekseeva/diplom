import 'package:diplom/Authorization/signInCode.dart';
import 'package:diplom/Settings/verifyNumber.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'eventsSettings.dart';

class newNumberPage extends StatefulWidget {
  const newNumberPage({Key? key}) : super(key: key);

  @override
  State<newNumberPage> createState() => _newNumberState();
}

class _newNumberState extends State<newNumberPage> {
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
                      'Новый номер телефона',
                      style: GoogleFonts.manrope(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
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
                                      placeholder: "+7 (911) 322-32-23",
                                      keyboardType: TextInputType.phone,
                                      autocorrect: false,
                                      maxLength: 18,
                                      suffixMode: OverlayVisibilityMode.editing,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly,
                                        NumberTextInputFormatter(),
                                      ],
                                      onChanged: (text) {
                                        setState((){
                                          _isDisabled = text.length != 18;
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
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>
                                              verifyNumberPage(),
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

class NumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newTextLength = newValue.text.length;
    int selectionIndex = newValue.selection.end;
    int usedSubstringIndex = 1;
    final newTextBuffer = StringBuffer();

    if (newTextLength >= 1) {
      if (newValue.text.startsWith(RegExp(r'[1234567890]'))) {
        newTextBuffer.write('+7');
        if (newValue.selection.end >= 1) selectionIndex++;
      }
    }
    if (newTextLength >= 2) {
      if (newValue.text.startsWith(RegExp(r'[1234567890]'))) {
        newTextBuffer.write(' (9');
        newTextBuffer.write(newValue.text.substring(2, usedSubstringIndex = 2));
        if (newValue.selection.end >= 1) selectionIndex += 2;
      }
    }
    if (newTextLength >= 5) {
      newTextBuffer.write(
          newValue.text.substring(usedSubstringIndex, usedSubstringIndex = 4) +
              ') ');
      if (newValue.selection.end >= 4) selectionIndex += 2;
    }
    if (newTextLength >= 8) {
      newTextBuffer.write(
          newValue.text.substring(usedSubstringIndex, usedSubstringIndex = 7) +
              '-');
      if (newValue.selection.end >= 7) selectionIndex++;
    }
    if (newTextLength >= 10) {
      newTextBuffer.write(
          newValue.text.substring(usedSubstringIndex, usedSubstringIndex = 9) +
              '-');
      if (newValue.selection.end >= 9) selectionIndex++;
    }
    if (newTextLength > usedSubstringIndex)
      newTextBuffer
          .write(newValue.text.substring(usedSubstringIndex, newTextLength));
    return TextEditingValue(
      text: newTextBuffer.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
