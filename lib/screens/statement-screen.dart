import 'package:flutter/material.dart';
import 'package:liga95/widgets/liga-divider.dart';

class StatementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleStatement(
          title: "Miggu Ini",
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) =>
                LigaDivider(),
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: ListTile(
                  title: Text(
                    "2020-03-09",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    "Ticket 3, Bet 2000.00, Win 6000.00",
                    style: TextStyle(
                      color: Color(0xffa5a5a5),
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class TitleStatement extends StatelessWidget {
  final String title;
  TitleStatement({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff262626),
      height: 48.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 26,
          ),
        ],
      ),
    );
  }
}
