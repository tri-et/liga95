import 'package:flutter/material.dart';

class BetListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DateTransaction(dateTransaction: "20-03-13"),
        BetItem(),
        SizedBox(height: 5.0),
        BetItem(),
        DateTransaction(dateTransaction: "20-03-12"),
        BetItem(),
      ],
    );
  }
}

class BetItem extends StatelessWidget {
  static const TextStyle _labelStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff262626),
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/icon/8.png",
            width: 45.0,
            height: 45.0,
          ),
          SizedBox(width: 15.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "AfbSportbook",
                  style: _labelStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "HDP022678410",
                  style: _labelStyle.copyWith(
                    fontSize: 15.0,
                    color: Color(0xffa5a5a5),
                  ),
                ),
                Text(
                  "Autralia Hyundai A League",
                  style: _labelStyle.copyWith(
                    color: Color(0xffa5a5a5),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                "IDR 10,000.00",
                style: _labelStyle,
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
                size: 26.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DateTransaction extends StatelessWidget {
  final String dateTransaction;
  DateTransaction({@required this.dateTransaction});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
      child: Text(
        dateTransaction,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
