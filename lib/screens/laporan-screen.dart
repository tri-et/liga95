import 'package:flutter/material.dart';
import 'package:liga95/screens/betlist-screen.dart';
import 'package:liga95/screens/referral-screen.dart';
import 'package:liga95/screens/statement-screen.dart';
import 'package:liga95/screens/today-screen.dart';

class LaporanScreen extends StatefulWidget {
  @override
  _LaporanScreenState createState() => _LaporanScreenState();
}

class _LaporanScreenState extends State<LaporanScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<Widget> myTabs = <Widget>[
    Container(
      padding: EdgeInsets.fromLTRB(15.0, 6.0, 15.0, 6.0),
      margin: EdgeInsets.all(0.0),
      child: Text("Today"),
    ),
    Container(
      padding: EdgeInsets.fromLTRB(15.0, 6.0, 15.0, 6.0),
      child: Text("Statement"),
    ),
    Container(
      padding: EdgeInsets.fromLTRB(15.0, 6.0, 15.0, 6.0),
      child: Text("Betlist"),
    ),
    Container(
      padding: EdgeInsets.fromLTRB(15.0, 6.0, 15.0, 6.0),
      child: Text("Referral"),
    ),
  ];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            labelPadding: EdgeInsets.only(left: 5.0, right: 5.0, top: 0.0, bottom: 0.0),
            indicator: BoxDecoration(
              color: Color(0xff3d3d3d),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            controller: _tabController,
            tabs: myTabs,
          ),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 15.0),
          child: TabBarView(controller: _tabController, children: [
            TodayScreen(),
            StatementScreen(),
            BetListScreen(),
            ReferralScreen(),
          ]),
        ));
  }
}
