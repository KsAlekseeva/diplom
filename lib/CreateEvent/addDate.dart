import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:time_pickerr/time_pickerr.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:flutter/cupertino.dart';

import 'newEvent.dart';

class addDatePage extends StatefulWidget {
  const addDatePage({Key? key}) : super(key: key);

  @override
  State<addDatePage> createState() => _addDateState();
}

class _addDateState extends State<addDatePage> {
  var controller = TextEditingController();
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
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
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Сохранить',
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
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: _focusedDay,
                      selectedDayPredicate: (day) =>
                          isSameDay(_selectedDay, day),
                      rangeStartDay: _rangeStart,
                      rangeEndDay: _rangeEnd,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                          formatButtonTextStyle:
                              TextStyle(height: 50, color: Colors.white),
                          titleTextStyle: TextStyle(
                              fontSize: 22,
                              color: Color(0xFF8A40B8),
                              fontWeight: FontWeight.w700)),
                      daysOfWeekStyle: DaysOfWeekStyle(
                          weekendStyle: TextStyle(
                              fontSize: 17,
                              color: Color(0xFFC5C5C7),
                              fontWeight: FontWeight.w600),
                          weekdayStyle: TextStyle(
                              fontSize: 17,
                              color: Color(0xFFC5C5C7),
                              fontWeight: FontWeight.w600)),
                      calendarStyle: const CalendarStyle(
                        selectedDecoration: BoxDecoration(
                          color: Color(0xFFF5EDFB),
                        ),
                        todayDecoration: BoxDecoration(),
                        todayTextStyle:
                            TextStyle(color: Color(0xFFB069DB), fontSize: 20),
                        defaultTextStyle:
                            TextStyle(color: Color(0xFFB069DB), fontSize: 20),
                        disabledTextStyle:
                            TextStyle(color: Color(0xFFB069DB), fontSize: 20),
                        holidayTextStyle:
                            TextStyle(color: Color(0xFFB069DB), fontSize: 20),
                        outsideTextStyle:
                            TextStyle(color: Color(0xFFB069DB), fontSize: 20),
                        selectedTextStyle: TextStyle(
                          color: Color(0xFFB069DB),
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                        weekendTextStyle:
                            TextStyle(color: Color(0xFFB069DB), fontSize: 20),
                        withinRangeTextStyle:
                            TextStyle(color: Color(0xFFB069DB), fontSize: 20),
                        rangeHighlightColor: Color(0xFFB069DB),
                        outsideDaysVisible: false,
                      ),
                      onDaySelected: _onDaySelected,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Добавьте время, оно отобразится\n              слева после выбора',
                      style: GoogleFonts.openSans(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.7,
                          color: Color(0xFF8B41B9)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('', style: TextStyle(fontSize: 20),),
                        IconButton(onPressed: () => {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) {
                              return buildCustomTimerFrom(context);
                            },
                            ),
                        }, icon: Icon(Icons.add, size: 28, color: Color(0xFF8B41B9),)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('', style: TextStyle(fontSize: 20),),
                        IconButton(onPressed: () => {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) {
                              return buildCustomTimerTo(context);
                            },
                          ),
                        }, icon: Icon(Icons.add, size: 28, color: Color(0xFF8B41B9),)),
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

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
      });
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
    });
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
}
buildCustomTimerFrom(BuildContext context) {
  return CustomHourPicker(
    titleStyle: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black, ),
    negativeButtonText: 'Отмена',
    positiveButtonText: 'Готово',
    title: 'Выберите время, начиная с которого вы свободны',
    negativeButtonStyle: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFF8B41B9)),
    positiveButtonStyle: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFF8B41B9)),
    elevation: 2,
    onPositivePressed: (context, time) {
      Navigator.pop(context);
    },
    onNegativePressed: (context) {
      Navigator.pop(context);
    },
  );
}

buildCustomTimerTo(BuildContext context) {
  return CustomHourPicker(
    titleStyle: TextStyle(fontSize: 20,
      fontWeight: FontWeight.w700,
      color: Colors.black, ),
    negativeButtonText: 'Отмена',
    positiveButtonText: 'Готово',
    title: 'Выберите время, после которого Вы уже заняты',
    negativeButtonStyle: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFF8B41B9)),
    positiveButtonStyle: TextStyle(fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFF8B41B9)),
    elevation: 2,
    onPositivePressed: (context, time) {
      Navigator.pop(context);
    },
    onNegativePressed: (context) {
      Navigator.pop(context);
    },
  );
}