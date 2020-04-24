import 'package:flutter/material.dart';

class ReferralScreen extends StatelessWidget {
  static const TextStyle _labelStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Color(0xff3d3d3d),
          child: ListTile(
            title: Row(
              children: <Widget>[
                Text(
                  "1",
                  style: _labelStyle,
                ),
                Padding(padding: EdgeInsets.only(right: 15.0)),
                Text(
                  "tath66",
                  style: _labelStyle.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            trailing: Text(
              "2020-03-13",
              style: _labelStyle,
            ),
          ),
        ),
      ],
    );
  }
}
