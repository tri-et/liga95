import 'package:flutter/material.dart';
import 'package:liga95/core/models/bank.dart';
import 'package:liga95/screens/main-screen.dart';

class BankScreen extends StatefulWidget {
  static const routeName = '/bank-screen';

  @override
  _BankScreenState createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  final double _heightSizeBox = 38.0;

  final TextStyle _labletTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 15.0,
  );

  final TextStyle _inputTextStyle = TextStyle(
    color: Colors.white,
  );

  final InputDecoration _inputDecoration = InputDecoration(
    filled: true,
    fillColor: Color(0xFF2c5da2),
    border: InputBorder.none,
    contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 10.0),
  );
  List<Bank> _listBanks() {
    return <Bank>[
      Bank(id: 1, name: "May Bank"),
      Bank(id: 2, name: "ACB Bank"),
      Bank(id: 3, name: "HSBC Bank"),
      Bank(id: 4, name: "City Bank"),
    ];
  }

  List<DropdownMenuItem<Bank>> _dropdownMenuItems;
  Bank _selectedBank;
  List<DropdownMenuItem<Bank>> buildDropdownMenuItems(List banks) {
    List<DropdownMenuItem<Bank>> items = List();
    for (Bank bank in banks) {
      items.add(DropdownMenuItem(
        value: bank,
        child: Text(
          bank.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
          ),
        ),
      ));
    }
    return items;
  }

  onChangeDropdownItem(Bank seletedBank) {
    setState(() {
      _selectedBank = seletedBank;
    });
  }

  @override
  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropdownMenuItems(_listBanks());
    _selectedBank = _dropdownMenuItems[0].value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10305f),
      body: Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        margin: EdgeInsets.fromLTRB(30, 85, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Choose Your Bank",
              style: _labletTextStyle,
            ),
            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              height: _heightSizeBox,
              width: double.infinity,
              color: Color(0xFF2c5da2),
              child: Theme(
                data: ThemeData(canvasColor: Color(0xFF2c5da2)),
                child: DropdownButton(
                  isExpanded: true,
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  underline: SizedBox(),
                  value: _selectedBank,
                  items: _dropdownMenuItems,
                  onChanged: onChangeDropdownItem,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Name",
              style: _labletTextStyle,
            ),
            SizedBox(height: 5.0),
            SizedBox(
              height: _heightSizeBox,
              child: TextField(
                style: _inputTextStyle,
                decoration: _inputDecoration,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Account Number",
              style: _labletTextStyle,
            ),
            SizedBox(height: 5.0),
            SizedBox(
              height: _heightSizeBox,
              child: TextField(
                style: _inputTextStyle,
                keyboardType: TextInputType.number,
                decoration: _inputDecoration,
              ),
            ),
            Center(
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MainScreen.routeName);
                  // Navigator.of(context).pushNamed(WalletScreen.routeName);
                },
                child: Text("Continue", style: _labletTextStyle),
              ),
            )
          ],
        ),
      ),
    );
  }
}
