import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liga95/widgets/liga-divider.dart';
import 'package:liga95/widgets/liga-expansion-title.dart';

class StatementScreen extends StatelessWidget {
  static List<StatementItem> _items = [
    StatementItem(),
    StatementItem(),
    StatementItem(),
    StatementItem(),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        LigaExpansionTile(
          title: "Minggu Ini",
          children: _items,
        ),
        LigaDivider(),
        LigaExpansionTile(
          title: "Minggu Lalu",
          children: _items,
        )
      ],
    );
  }
}

class StatementItem extends StatelessWidget {
  static var formatter = DateFormat('yyyy-MM-dd');
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff262626),
      child: ListTile(
        title: Text(
          formatter.format(DateTime.now()),
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
  }
}
