import 'package:flutter/material.dart';
import 'package:opendoor_flutter/pages/login/login_page.dart';
import 'package:opendoor_flutter/utils/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  var config = Config();
  await config.createPreferences();
  runApp(OpenDoor());
}

class OpenDoor extends StatelessWidget {
  OpenDoor({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = Config();
    var preferences = config.getPreferences();

    if (preferences!.getString('base_url') == null) {
      preferences.setString('base_url', 'http://192.168.104.179:8080');
    }

    return MaterialApp(
      title: 'Open Door',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
