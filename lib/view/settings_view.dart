import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:user_app/providers/dark_theme_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String mode = "ok";

  @override
  Widget build(BuildContext context) {
    final darkThemeProvider = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("aaa")),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SwitchListTile(
                title: Text("Theme"),
                value: darkThemeProvider.darkTheme,
                onChanged: (bool val) {
                  setState(() {
                    darkThemeProvider.darkTheme = val;
                  });
                },
                secondary: Icon(Icons.light_mode_outlined),
              ),
              Text(
                "tttt",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
        ),
      ),
    );
  }
}
