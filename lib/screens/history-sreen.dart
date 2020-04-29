import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:liga95/widgets/liga-divider.dart';

class HistoryScreen extends StatelessWidget {
  static const routeName = '/history-screen';
  static List<Map<String, dynamic>> data = [
    {"title": "Bank - Withdraw", "amount": "-10,000", "status": 1},
    {"title": "Bank - Deposit", "amount": "10,000", "status": 2},
    {"title": "Wallet - Cash In", "amount": "10,000", "status": 3},
    {"title": "Wallet - Cash Out", "amount": "-10,000", "status": 3},
    {"title": "Bank - Withdraw", "amount": "-5,000", "status": 1},
    {"title": "Bank - Deposit", "amount": "5,000", "status": 2},
    {"title": "Wallet - Cash In", "amount": "5,000", "status": 3},
    {"title": "Wallet - Cash Out", "amount": "5,000", "status": 3},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a1a1a),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Laporan History"),
        leading: FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: data.length,
        separatorBuilder: (BuildContext context, int index) => LigaDivider(),
        itemBuilder: (BuildContext context, int index) {
          return HistoryItem(
            data: data[index],
          );
        },
      ),
    );
  }
}

class HistoryItem extends StatelessWidget {
  static var formatter = DateFormat("yyyy-MM-dd hh:mm:ss");
  final Map<String, dynamic> data;
  HistoryItem({@required this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),
      child: ListTile(
        title: Text(
          data["title"],
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          formatter.format(DateTime.now()),
          style: TextStyle(
            color: Color(0xffa5a5a5),
          ),
        ),
        trailing: Text(
          "IDR ${data["amount"]}",
          style: TextStyle(
            color: _colorStatus(data["status"]),
          ),
        ),
      ),
    );
  }

  Color _colorStatus(int status) {
    switch (status) {
      case 1:
        return Color(0xffff4848);
      case 2:
        return Color(0xff7eff58);
      default:
        return Colors.white;
    }
  }
}
