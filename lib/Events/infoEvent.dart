import 'dart:ui';
import 'package:diplom/Events/eventsMain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:card_swiper/card_swiper.dart';

class infoEventPage extends StatefulWidget {
  const infoEventPage({Key? key}) : super(key: key);

  @override
  State<infoEventPage> createState() => _infoEventState();
}
class Contacts {
  var name = '';
  var check = false;

  Contacts({required this.name, required this.check});
}

List list = [Contacts(name: 'Mikhailova Alevtina', check: false), Contacts(name: 'Username', check: true)];



class _infoEventState extends State<infoEventPage> {



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
                  height: 290,
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
                                  itemBuilder:
                                      (BuildContext context, int index) {
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
                                )),
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
                      onPressed: () {
                        showBarModalBottomSheet(
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            controller: ModalScrollController.of(context),
                            child: Container(
                              height: 700,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 13, right: 20),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(
                                              context,
                                            );
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
                                          'Invite members',
                                          style: GoogleFonts.openSans(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: -0.7,
                                              color: Colors.black),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(
                                              context,
                                            );
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
                                    Container(
                                      width: 360,
                                      height: 610,
                                      child: ListView.separated(
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                          height: 0,
                                        ),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            height: 50,
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Text(
                                                            list[index].name,
                                                            overflow:
                                                                TextOverflow
                                                                    .fade,
                                                            style: GoogleFonts.openSans(
                                                                color: Color(
                                                                    0xFF444444),
                                                                fontSize: 21,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                        ),
                                                        Transform.scale(
                                                          scale: 1.2,
                                                          child: Checkbox(
                                                            activeColor: Color(
                                                                0xFF8A40B8),
                                                            focusColor: Color(
                                                                0xFF8A40B8),
                                                            value: list[index].check,
                                                            onChanged:
                                                                (value) {
                                                              setState(() {
                                                                list[index].check = !list[index].check;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        itemCount: list.length,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
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

Future<T?> showBarModalBottomSheet<T>({
  required BuildContext context,
  required WidgetBuilder builder,
  Color? backgroundColor,
  double? elevation,
  ShapeBorder? shape,
  double? closeProgressThreshold,
  Clip? clipBehavior,
  Color barrierColor = Colors.black87,
  bool bounce = true,
  bool expand = false,
  AnimationController? secondAnimation,
  Curve? animationCurve,
  bool useRootNavigator = false,
  bool isDismissible = true,
  bool enableDrag = true,
  Widget? topControl,
  Duration? duration,
  RouteSettings? settings,
}) async {
  assert(debugCheckHasMediaQuery(context));
  assert(debugCheckHasMaterialLocalizations(context));
  final result = await Navigator.of(context, rootNavigator: useRootNavigator)
      .push(ModalBottomSheetRoute<T>(
    builder: builder,
    bounce: bounce,
    closeProgressThreshold: closeProgressThreshold,
    containerBuilder: (_, __, child) => BarBottomSheet(
      child: child,
      control: topControl,
      clipBehavior: clipBehavior,
      shape: shape,
      elevation: elevation,
    ),
    secondAnimationController: secondAnimation,
    expanded: expand,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    isDismissible: isDismissible,
    modalBarrierColor: barrierColor,
    enableDrag: enableDrag,
    animationCurve: animationCurve,
    duration: duration,
    settings: settings,
  ));
  return result;
}
