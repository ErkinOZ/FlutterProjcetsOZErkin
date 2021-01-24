import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/top_bar.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopBar(),
          TableCalendar(
            calendarController: _controller,
          )
          //TopBar1(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {}, //ckick action
        tooltip: 'Click to Add',
      ),
    );
  }
}
