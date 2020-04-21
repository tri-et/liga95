import 'package:flutter/material.dart';
import 'package:liga95/screens/login-screen.dart';
import 'package:liga95/widgets/liga-divider.dart';

class AccountScreen extends StatelessWidget {
  static const TextStyle _labelStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1A1A1A),
      padding: EdgeInsets.only(top: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  "assets/icon/btn3a.png",
                  width: 70.0,
                  height: 70.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Test ABC",
                        style: _labelStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Edit Profile >",
                        style: _labelStyle,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Bank",
              style: _labelStyle,
            ),
          ),
          LigaDivider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Referral",
              style: _labelStyle,
            ),
          ),
          LigaDivider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Setting",
              style: _labelStyle,
            ),
          ),
          LigaDivider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Change Password",
              style: _labelStyle,
            ),
          ),
          LigaDivider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Help Center",
                style: _labelStyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: LogoutButton(),
          ),
        ],
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
        },
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
              "LOGOUT",
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
