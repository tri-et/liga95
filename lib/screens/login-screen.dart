import 'package:flutter/material.dart';
import 'package:liga95/screens/bank-screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10305f),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        "assets/icon/logo.png",
                        scale: 1.5,
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Username",
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
                      "Password",
                      style: _labletTextStyle,
                    ),
                    SizedBox(height: 5.0),
                    SizedBox(
                      height: _heightSizeBox,
                      child: TextField(
                        obscureText: true,
                        style: _inputTextStyle,
                        decoration: _inputDecoration,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Tel",
                      style: _labletTextStyle,
                    ),
                    SizedBox(height: 5.0),
                    SizedBox(
                      height: _heightSizeBox,
                      child: TextField(
                        style: _inputTextStyle,
                        keyboardType: TextInputType.phone,
                        decoration: _inputDecoration,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Email",
                      style: _labletTextStyle,
                    ),
                    SizedBox(height: 5.0),
                    SizedBox(
                      height: _heightSizeBox,
                      child: TextField(
                        style: _inputTextStyle,
                        keyboardType: TextInputType.emailAddress,
                        decoration: _inputDecoration,
                      ),
                    ),
                    Center(
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(BankScreen.routeName);
                        },
                        child: Text("Continue", style: _labletTextStyle),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      padding: EdgeInsets.all(10.0),
                      color: Color(0xFF0e2648),
                      child: SingleChildScrollView(
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                          style: TextStyle(
                            color: Color(0xFF1a4a7b),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Center(
                      child: Text(
                        "Or continue with soial account",
                        style: _labletTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    MaterialButton(
                      textColor: Colors.white,
                      padding: EdgeInsets.all(0.0),
                      minWidth: 120.0,
                      child: Container(
                        width: 110.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/icon/f.jpg')),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(43.0, 5.0, 10.0, 10.0),
                          child: Text("Facebook", style: TextStyle(fontSize: 12.0)),
                        ),
                      ),
                      onPressed: () {
                        print('Tapped');
                      },
                    ),
                    MaterialButton(
                      padding: EdgeInsets.all(0.0),
                      minWidth: 120.0,
                      child: Container(
                        width: 110.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/icon/g.jpg')),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(50.0, 5.0, 10.0, 10.0),
                          child: Text(
                            "Google",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        print('Tapped');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
