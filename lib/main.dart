import 'package:flutter/material.dart';
import 'package:liga95/screens/bank-screen.dart';
import 'package:liga95/screens/deposit-screen.dart';
import 'package:liga95/screens/login-screen.dart';
import 'package:liga95/screens/wallet-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Segoe',
        primaryColor: Color(0xff1a1a1a),
      ),
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        BankScreen.routeName: (_) => BankScreen(),
        WalletScreen.routeName: (_) => WalletScreen(),
        DepositSreen.routeName: (_) => DepositSreen(),
      },
    );
  }
}
