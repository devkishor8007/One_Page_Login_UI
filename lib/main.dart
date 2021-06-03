import 'package:flutter/material.dart';
import 'package:login_UI/screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith(
            (states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.redAccent; // the color when checkbox is selected;
              }
              return Colors.white; //the color when checkbox is unselected;
            },
          ),
        ),
        scaffoldBackgroundColor: Colors.greenAccent.withGreen(3),
      ),
      debugShowCheckedModeBanner: false,
      title: "Login_UI",
      home: HomePage(),
    );
  }
}
