import 'package:flutter/material.dart';
import 'package:liga95/screens/account-screen.dart';
import 'package:liga95/screens/home-screen.dart';
import 'package:liga95/screens/wallet-screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main-screen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  int _currentPage = 0;
  PageController _pageController;
  final List<Widget> _children = [
    HomeScreen(),
    WalletScreen(),
    Container(
      child: Center(child: Text("page2")),
    ),
    Container(
      child: Center(child: Text("page4")),
    ),
    AccountScreen(),
  ];
  void _navigateToPage(int index) {
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 200), curve: Curves.bounceIn);
  }

  void _changeTab(int index) {
    setState(() {
      this._currentPage = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _children,
        controller: _pageController,
        onPageChanged: _changeTab,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xff2b2b2b))),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentPage,
          selectedItemColor: Color(0xffffe600),
          unselectedItemColor: Color(0xff373737),
          backgroundColor: Colors.black,
          onTap: _navigateToPage,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icon/btn5b.png',
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                'assets/icon/btn5a.png',
                width: 24,
                height: 24,
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icon/btn1b.png',
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                'assets/icon/btn1a.png',
                width: 24,
                height: 24,
              ),
              title: Text('Laporan'),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icon/btn2b.png',
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                'assets/icon/btn2a.png',
                width: 24,
                height: 24,
              ),
              title: Text('Bayaran'),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icon/btn4b.png',
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                'assets/icon/btn4a.png',
                width: 24,
                height: 24,
              ),
              title: Text('Mesej'),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icon/btn3b.png',
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                'assets/icon/btn3a.png',
                width: 24,
                height: 24,
              ),
              title: Text('Akaun'),
            ),
          ],
        ),
      ),
    );
  }
}
