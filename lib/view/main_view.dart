import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:user_app/core/routes/routes_name.dart';
import 'package:user_app/view/explorer_view.dart';
import 'package:user_app/view/home_view.dart';
import 'package:user_app/view/login_view.dart';
import 'package:user_app/view/mypage_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectecIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ExplorerScreen(),
    MyPageScreen(),
  ];

  void _onTab(int page) {
    setState(() {
      _selectecIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'demo',
            style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.white,
          elevation: 1.0,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectecIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'MY'),
          ],
          onTap: (value) => _onTab(value),
          selectedItemColor: Colors.green[800],
          currentIndex: _selectecIndex,
        ));
  }
}
