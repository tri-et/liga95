import 'package:flutter/material.dart';

class LaporanScreen extends StatefulWidget {
  @override
  _LaporanScreenState createState() => _LaporanScreenState();
}

class _LaporanScreenState extends State<LaporanScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Color(0xff1a1a1a),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            title: Text(
              "Laporan",
              style: TextStyle(fontSize: 26.0),
            ),
            actions: <Widget>[
              FlatButton(
                textColor: Colors.white,
                onPressed: () {},
                child: Text(
                  "History",
                  style: TextStyle(
                    color: Color(0xff85caf3),
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xffffe600),
              unselectedLabelColor: Color(0xffa5a5a5),
              labelPadding: EdgeInsets.only(left: 5.0, right: 5.0),
              indicator: BoxDecoration(
                color: Color(0xff3d3d3d),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              tabs: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Text("Today"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Text("Statement"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Text("Betlist"),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  child: Text("Referral"),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Text("data"),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bike),
          ])),
    );
  }
}
