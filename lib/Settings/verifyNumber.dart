import 'package:diplom/Settings/eventsSettings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';

class verifyNumberPage extends StatefulWidget {
  const verifyNumberPage({Key? key}) : super(key: key);

  @override
  State<verifyNumberPage> createState() => _verifyNumberState();
}

class _verifyNumberState extends State<verifyNumberPage> {
  var controller = TextEditingController();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Color(0xFF444444)),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

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
                      'Verify phone number',
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'SMS code',
                          textAlign: TextAlign.end,
                          style: GoogleFonts.sourceSansPro(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.3),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 100,
                            width: 350,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                      child: PinPut(
                                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                                        fieldsCount: 6,
                                        eachFieldHeight: 48,
                                        eachFieldWidth: 42,
                                        controller: controller,
                                        textStyle: TextStyle(fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: -0.7),
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        onChanged: (text) {
                                          setState(() {
                                            _isDisabled = text.length != 6;
                                          });
                                        },
                                        mainAxisSize: MainAxisSize.max,
                                        submittedFieldDecoration:
                                        _pinPutDecoration.copyWith(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        selectedFieldDecoration:
                                        _pinPutDecoration,
                                        followingFieldDecoration:
                                        _pinPutDecoration.copyWith(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                          border: Border.all(
                                            color: Color(0xFF444444),
                                          ),
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
                                                eventsSettingsPage(),
                                            ));
                                      },
                                    ),
                                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}