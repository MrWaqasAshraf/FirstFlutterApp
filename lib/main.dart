import 'package:flutter/material.dart';
import 'package:my_coded_apps/pages/Home_page.dart';
import 'package:my_coded_apps/pages/login_page.dart';

void main()
{
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  const TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
        initialRoute: "/home",
        routes: {
        "/login": (context) => LoginPage(),
          "/home": (context) => HomePage()
    },
    );
  }
}
