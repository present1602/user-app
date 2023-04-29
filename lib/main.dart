import 'package:flutter/material.dart';
import 'package:user_app/core/routes/routes.dart';
import 'package:user_app/core/routes/routes_name.dart';
import 'package:user_app/view/explorer_view.dart';
import 'package:user_app/view/main_view.dart';
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
          scaffoldBackgroundColor: const Color(0xFFEFEFEF)),
      // home: const MyHomePage(title: 'Demo'),
      initialRoute: RoutesName.home,
      routes: namedRoutes,
      // routes: {
      //   '/': (context) => HomeScreen(),
      //   '/mypage': (context) => MyPageScreen(),
      // },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectecIndex = 0;

//   void _onTab(int idx) {
//     setState(() {
//       _selectecIndex = idx;
//     });
//   }

//   List<Widget> _widgetOptions = <Widget>[
//     HomeScreen(),
//     ExplorerScreen(),
//     MyPageScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             widget.title,
//             style: TextStyle(color: Colors.green),
//           ),
//           backgroundColor: Colors.white,
//           elevation: 1.0,
//         ),
//         body: Center(
//           child: _widgetOptions.elementAt(_selectecIndex),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
//             BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.account_circle), label: 'MY'),
//           ],
//           onTap: (value) => _onTab(value),
//           selectedItemColor: Colors.green[800],
//           currentIndex: _selectecIndex,
//         ));
//   }
// }
