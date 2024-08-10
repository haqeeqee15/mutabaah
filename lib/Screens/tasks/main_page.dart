import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:hijriyah_indonesia/hijriyah_indonesia.dart';
// import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
// import 'package:intl/date_symbol_data_local.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DateTime now = DateTime.now();
  final _format = Hijriyah.now();
  // final CalendarSliderController _firstController = CalendarSliderController();
  // final CalendarSliderController _secondController = CalendarSliderController();

  // late DateTime _selectedDateAppBBar;
  // late DateTime _selectedDateNotAppBBar;

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Mutaba'ah"),
        actions: [
          penanggalan(context),
        ],
      ),
      body: Column(
        children: [
          Calendar(
            startOnMonday: true,
          weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
          isExpandable: true,
          eventDoneColor: Colors.deepPurple,
          selectedColor: Colors.blue,
          selectedTodayColor: Colors.green,
          todayColor: Colors.teal,
          eventColor: null,
          locale: 'en_US',
          )
        ],
      ),
       
    );
  }

 

  penanggalan(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            _format.fullDate(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Text(
            DateFormat.yMMMMEEEEd('id').format(now),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Text(
//         title,
//         style: Theme.of(context).textTheme.bodySmall?.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//       ),
//     );
}
