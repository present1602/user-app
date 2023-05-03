import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String mode = "ok";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SwitchListTile(
              title: Text("Theme"),
              value: false,
              onChanged: (bool val) {
                setState(() {
                  mode = "ok22";
                });
              },
              secondary: Icon(Icons.light_mode_outlined),
            ),
            Text(mode)
          ],
        ),
      ),
    );
  }
}
