import 'package:flutter/material.dart';
import 'package:user_app/view/explorer_view.dart';
import 'package:user_app/view/home_view.dart';
import 'package:user_app/view/mypage_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectecIndex = 0;

  void _onTab(int idx) {
    setState(() {
      _selectecIndex = idx;
    });
  }

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ExplorerScreen(),
    MyPageScreen(),
  ];
  //   Text(
  //     'Index 0: Home',
  //   ),
  //   Text(
  //     'Index 1: search page',
  //   ),
  //   Text(
  //     'Index 2: mypage',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
            style: TextStyle(color: Colors.green),
          ),
          backgroundColor: Colors.white,
          elevation: 1.0,
        ),
        body: Center(child: _widgetOptions.elementAt(_selectecIndex)),
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
