import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liga95/screens/history-sreen.dart';

class TodayScreen extends StatelessWidget {
  static var formatter = DateFormat('E, dd  MMM  yyyy');
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(30.0, 8.0, 0.0, 8.0),
          alignment: Alignment.centerLeft,
          child: Text(
            formatter.format(DateTime.now()),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          color: Color(0xff262626),
          padding: EdgeInsets.only(
            left: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListTile(
                title: Text(
                  "Nothing's happening now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Your on going activities will appear here.",
                  style: TextStyle(
                    color: Color(0xffa5a5a5),
                  ),
                ),
                contentPadding: EdgeInsets.all(0.0),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, HistoryScreen.routeName);
                },
                padding: EdgeInsets.all(0.0),
                child: Text(
                  "View History",
                  style: TextStyle(
                    color: Color(0xff85caf3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
