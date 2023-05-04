import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:provider/provider.dart';
import 'package:user_app/constants/theme_data.dart';
import 'package:user_app/core/routes/routes.dart';
import 'package:user_app/core/routes/routes_name.dart';
import 'package:user_app/providers/dark_theme_provider.dart';
import 'package:user_app/view/explorer_view.dart';
import 'package:user_app/view/main_view.dart';
import 'package:user_app/view/mypage_view.dart';

void main() {
  // KakaoSdk.init(
  //       nativeAppKey: '${YOUR_NATIVE_APP_KEY}',
  //       javaScriptAppKey: '${YOUR_JAVASCRIPT_APP_KEY}',
  //   );
  KakaoSdk.init(
    nativeAppKey: "785a5cbddd6caa3c085494e0eb426f66",
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  // IconData _iconLight = Icons.wb_sunny;
  // IconData _iconDark = Icons.nights_stay;

  ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.red,
    scaffoldBackgroundColor: const Color(0xFFEFEFEF),
  );

  ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: const Color(0xFFEFEFEF));

  @override
  void initState() {
    super.initState();
  }

  void _switchTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<DarkThemeProvider>(
            // create: (_) => DarkThemeProvider(),
            create: (_) {
              return themeChangeProvider;
            },
          )
        ],
        child:
            Consumer<DarkThemeProvider>(builder: (context, themeData, child) {
          return MaterialApp(
            title: 'my app',
            // theme: themeChangeProvider.darkTheme ? darkTheme : lightTheme,
            theme: Styles.themeData(themeChangeProvider.darkTheme, context),
            initialRoute: RoutesName.settings,
            routes: namedRoutes,
          );
        }));
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
