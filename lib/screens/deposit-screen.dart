import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class DepositSreen extends StatefulWidget {
  static const routeName = '/deposit-screen';
  static const Color colorBox = Color(0xff262626);
  static const TextStyle _lableInfo = TextStyle(
    color: Color(0xffffe600),
    fontSize: 16.0,
  );
  static const TextStyle _lable = TextStyle(
    color: Colors.white,
  );

  @override
  _DepositSreenState createState() => _DepositSreenState();
}

class _DepositSreenState extends State<DepositSreen> {
  final formatter = new NumberFormat("#,###");
  final InputDecoration _inputDecoration = InputDecoration(
    filled: true,
    fillColor: DepositSreen.colorBox,
    border: InputBorder.none,
    contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
  );

  TextEditingController _amountController;
  void _amountOnTap(amount) {
    setState(() {
      _amountController.text = amount;
      _amountController.selection = TextSelection.fromPosition(
          TextPosition(offset: _amountController.text.length));
    });
  }

  @override
  void initState() {
    super.initState();
    _amountController = new TextEditingController(text: '');
  }

  @override
  void dispose() {
    super.dispose();
    _amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1a1a1a),
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("Deposit"),
        ),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height -
                  AppBar().preferredSize.height -
                  MediaQuery.of(context).padding.top,
            ),
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    color: DepositSreen.colorBox,
                    child: Center(
                      child: Text(
                        "Test ABC",
                        style: DepositSreen._lableInfo,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          height: 40.0,
                          color: DepositSreen.colorBox,
                          child: Center(
                            child: Text(
                              "Bank BCA",
                              style: DepositSreen._lableInfo,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Flexible(
                        child: Container(
                          height: 40.0,
                          color: DepositSreen.colorBox,
                          child: Center(
                            child: Text(
                              "108544323428",
                              style: DepositSreen._lableInfo,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Ke Bank",
                                style: DepositSreen._lable,
                              ),
                              SizedBox(height: 5.0),
                              SizedBox(
                                height: 45.0,
                                child: TextField(
                                  decoration: _inputDecoration.copyWith(
                                    fillColor: Colors.white,
                                    hintText: '--Pilih--',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Flexible(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Nama Acount",
                                style: DepositSreen._lable,
                              ),
                              SizedBox(height: 5.0),
                              SizedBox(
                                height: 45.0,
                                child: TextField(
                                  style: DepositSreen._lable,
                                  decoration: _inputDecoration,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Nomor Account",
                        style: DepositSreen._lable,
                      ),
                      SizedBox(height: 5.0),
                      SizedBox(
                        height: 45.0,
                        child: TextField(
                          style: DepositSreen._lable,
                          decoration: _inputDecoration,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Amount(amount: "50,000", onTap: _amountOnTap),
                      ),
                      SizedBox(width: 4.0),
                      Flexible(
                        child: Amount(amount: "100,000", onTap: _amountOnTap),
                      ),
                      SizedBox(width: 4.0),
                      Flexible(
                        child:
                            Amount(amount: "100,000,000", onTap: _amountOnTap),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 45.0,
                    child: TextField(
                      inputFormatters: <TextInputFormatter>[
                        WhitelistingTextInputFormatter.digitsOnly,
                        CurrencyInputFormatter()
                      ],
                      keyboardType: TextInputType.number,
                      controller: _amountController,
                      decoration: _inputDecoration.copyWith(
                          fillColor: Colors.white,
                          hintText: 'Enter at least IDR 50,000'),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Catatan -",
                        style: DepositSreen._lable,
                      ),
                      SizedBox(height: 5.0),
                      SizedBox(
                        child: TextField(
                          maxLines: 7,
                          decoration: _inputDecoration.copyWith(
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TransferButton(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
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
              "KIRIM",
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

class Amount extends StatelessWidget {
  final String amount;
  final Function(String) onTap;
  Amount({@required this.amount, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(amount),
      child: Container(
        alignment: Alignment.center,
        height: 60.0,
        width: double.infinity,
        color: Color(0xff262626),
        child: Text(
          amount,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  CurrencyInputFormatter({this.maxDigits});
  final int maxDigits;

  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    if (maxDigits != null && newValue.selection.baseOffset > maxDigits) {
      return oldValue;
    }

    double value = double.parse(newValue.text);
    final formatter = new NumberFormat("#,###");
    String newText = formatter.format(value);
    return newValue.copyWith(
        text: newText,
        selection: new TextSelection.collapsed(offset: newText.length));
  }
}
