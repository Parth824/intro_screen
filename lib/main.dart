import 'package:flutter/material.dart';
import 'package:intro_screen/view/pages/Home_Pages.dart';
import 'package:intro_screen/view/pages/splec_saccen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool? k = await sharedPreferences.getBool("sp") ?? false;
  runApp(
    MaterialApp(
      initialRoute: (k == true) ? 'home' : '/',
      routes: {
        '/': (context) => Introduction_Saccrn(),
        'home': (context) => HomePage(),
      },
    ),
  );
}
