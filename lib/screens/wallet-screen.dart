import 'package:flutter/material.dart';
import 'package:liga95/screens/deposit-screen.dart';
import 'package:liga95/screens/withdraw-screen.dart';

class WalletScreen extends StatelessWidget {
  static const routeName = '/wallet-screen';

  final List<Map<String, String>> leftData = [
    {"name": "JBD168", "amount": "12,000.00"},
    {"name": "Tangkas", "amount": "8,000.00"},
    {"name": "Sexy", "amount": "0.00"},
    {"name": "WM Casino", "amount": "0.00"},
    {"name": "Poker QQ", "amount": "0.00"},
  ];
  final List<Map<String, String>> rightData = [
    {"name": "Togel", "amount": "12,000.00"},
    {"name": "SBO", "amount": "8,000.00"},
    {"name": "GD88", "amount": "0.00"},
    {"name": "AFB Sportbook", "amount": "0.00"},
    {"name": "Habanero", "amount": "0.00"},
  ];
  final Map<String, String> ultama = {
    "status": "Cash In - Domppet Utama",
    "transationID": "IN11-000123929"
  };
  final Map<String, String> jdb = {
    "status": "Cash Out - JDB168",
    "transationID": "IN11-000123928"
  };
  final InputDecoration _inputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    border: InputBorder.none,
    hintText: '--Pilin Dompet--',
    contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 14.0),
  );
  final TextStyle _labletTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 15.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1A1A1A),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      height: 185.0,
                      padding: EdgeInsets.fromLTRB(0, 45.0, 0, 30.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff0f4e90), Color(0xff10284b)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Main Wallet",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "800,000.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 70.0),
                      child: Center(
                        child: Text(
                          "Dompet",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: Container(
                                        height: 104,
                                        child: ListView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            padding: EdgeInsets.all(0.0),
                                            itemCount: leftData.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Dompet(
                                                index: index,
                                                data: leftData[index],
                                              );
                                            })),
                                  ),
                                  SizedBox(width: 5.0),
                                  Flexible(
                                    child: Container(
                                        height: 104,
                                        child: ListView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            padding: EdgeInsets.all(0.0),
                                            itemCount: rightData.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Dompet(
                                                index: index,
                                                data: rightData[index],
                                              );
                                            })),
                                  ),
                                ],
                              ),
                              SizedBox(height: 15.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Dari Dompet",
                                          style: _labletTextStyle,
                                        ),
                                        SizedBox(height: 5.0),
                                        SizedBox(
                                          height: 38.0,
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            decoration: _inputDecoration,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Ke Dompet",
                                          style: _labletTextStyle,
                                        ),
                                        SizedBox(height: 5.0),
                                        SizedBox(
                                          height: 38.0,
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            decoration: _inputDecoration,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 5.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Jumlah",
                                    style: _labletTextStyle,
                                  ),
                                  SizedBox(
                                    height: 35,
                                    child: TextField(
                                      decoration: _inputDecoration.copyWith(
                                          hintText: ""),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(child: TransferButton()),
                                  SizedBox(width: 5.0),
                                  Flexible(child: CashOutButton()),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                        DateTransaction(dateTransaction: "13 Mar 2020"),
                        CashInfo(
                          isCashIn: true,
                          data: ultama,
                        ),
                        DateTransaction(dateTransaction: "12 Mar 2020"),
                        CashInfo(
                          isCashIn: false,
                          data: jdb,
                        ),
                        DateTransaction(dateTransaction: "11 Mar 2020"),
                        CashInfo(
                          isCashIn: true,
                          data: ultama,
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        CashInfo(
                          isCashIn: false,
                          data: jdb,
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  child: Transaction(),
                  top: 130.0,
                  left: 30.0,
                  right: 30.0,
                ),
              ],
            ),
          ),
        ));
  }
}

class Transaction extends StatelessWidget {
  final TextStyle _lableStyle = TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    height: 1.6,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      padding: EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
      decoration: BoxDecoration(
        color: Color(0xFF262626),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DepositSreen.routeName);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icon/d.png',
                  width: 50.0,
                  height: 50.0,
                ),
                Text(
                  "Deposit",
                  style: _lableStyle,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(WithdrawSreen.routeName);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/icon/w.png',
                  width: 50.0,
                  height: 50.0,
                ),
                Text(
                  "Withdraw",
                  style: _lableStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Dompet extends StatelessWidget {
  final int index;
  final Map<String, String> data;
  static double paddingTB;
  Dompet({@required this.index, @required this.data}) {
    paddingTB = index.isEven ? 0.0 : 2.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index.isEven ? Color(0xFF262626) : Color(0xFF1A1A1A),
      padding: EdgeInsets.fromLTRB(8.0, paddingTB, 8.0, paddingTB),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            data["name"],
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            data["amount"],
            style: TextStyle(
              color: Color(0xFFFFE600),
            ),
          ),
        ],
      ),
    );
  }
}

class TransferButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: RaisedButton(
        onPressed: () {},
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff2cc100), Color(0xff145900)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            constraints: BoxConstraints(minWidth: 90.0),
            alignment: Alignment.center,
            child: Text(
              "TANSFER",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CashOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: RaisedButton(
        onPressed: () {},
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffc10000), Color(0xff600000)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            constraints: BoxConstraints(minWidth: 90.0),
            alignment: Alignment.center,
            child: Text(
              "ALL CASHOUT",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CashInfo extends StatelessWidget {
  final bool isCashIn;
  final Map<String, String> data;
  CashInfo({@required this.isCashIn, @required this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(15.0, 14.0, 5.0, 14.0),
      width: double.infinity,
      color: Color(0xff262626),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Flexible(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data["status"],
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                data["transationID"],
                style: TextStyle(color: Color(0xffa5a5a5)),
              )
            ],
          )),
          Row(
            children: <Widget>[
              Text(
                "IDR ${isCashIn ? '' : '-'}25,00",
                style: TextStyle(
                  color: isCashIn ? Color(0xff2cc100) : Colors.white,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              )
            ],
          ),
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
      padding: EdgeInsets.fromLTRB(30.0, 10.0, 0.0, 10.0),
      child: Text(
        dateTransaction,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
