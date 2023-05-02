import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_app/providers/dark_theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title: Text("Theme"),
          secondary: Icon(themeState.getDarkTheme
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
          onChanged: (bool value) {
            print(value);
            setState(() {
              themeState.setDarkTheme = value;
            });
          },
          value: false,
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text("FOOD"),
//         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           Text("coffee"),
//           Text("salad"),
//         ]),
        
//       ],
//     ));
//   }
// }
