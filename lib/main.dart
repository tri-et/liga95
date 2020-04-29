import 'package:flutter/material.dart';
import 'package:liga95/screens/bank-screen.dart';
import 'package:liga95/screens/deposit-screen.dart';
import 'package:liga95/screens/history-sreen.dart';
import 'package:liga95/screens/login-screen.dart';
import 'package:liga95/screens/main-screen.dart';
import 'package:liga95/screens/wallet-screen.dart';
import 'package:liga95/screens/withdraw-screen.dart';

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
        DepositSreen.routeName: (_) => DepositSreen(),
        WithdrawSreen.routeName: (_) => WithdrawSreen(),
        MainScreen.routeName: (_) => MainScreen(),
        WalletScreen.routeName: (_) => WalletScreen(),
        HistoryScreen.routeName: (_) => HistoryScreen(),
      },
    );
  }
}
