import 'package:flutter/material.dart';

class WithdrawSreen extends StatelessWidget {
  static const routeName = '/withdraw-screen';
  static const Color colorBox = Color(0xff262626);
  static const TextStyle _lableInfo = TextStyle(
    color: Color(0xffffe600),
    fontSize: 16.0,
  );
  static const TextStyle _lable = TextStyle(
    color: Colors.white,
  );
  final InputDecoration _inputDecoration = InputDecoration(
    filled: true,
    fillColor: colorBox,
    border: InputBorder.none,
    contentPadding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 5.0),
  );
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
          title: Text("Withdraw"),
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
                    color: colorBox,
                    child: Center(
                      child: Text(
                        "Test ABC",
                        style: _lableInfo,
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
                          color: colorBox,
                          child: Center(
                            child: Text(
                              "Bank BCA",
                              style: _lableInfo,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Flexible(
                        child: Container(
                          height: 40.0,
                          color: colorBox,
                          child: Center(
                            child: Text(
                              "108544323428",
                              style: _lableInfo,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          width: double.infinity,
                          color: colorBox,
                          child: Text(
                            "50,000",
                            style: _lable.copyWith(fontSize: 18.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 60.0,
                          color: colorBox,
                          child: Text(
                            "100,000",
                            style: _lable.copyWith(fontSize: 18.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 4.0),
                      Flexible(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 60.0,
                          color: colorBox,
                          child: Text(
                            "100,000,000",
                            style: _lable.copyWith(fontSize: 18.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 45.0,
                    child: TextField(
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
                        style: _lable,
                      ),
                      SizedBox(height: 5.0),
                      SizedBox(
                        //height: 999.0,
                        child: TextField(
                          //minLines: 10,
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
