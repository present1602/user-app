import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /*
  1. darktheme data
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("FOOD"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Text("coffee"),
              Text("salad"),
            ])
          ],
        )),
      ),
    );
  }
}
