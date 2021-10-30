import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_coded_apps/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        centerTitle: true,
        title: Text("Home Page"),
      )),
      body: Center(
        child: Container(
          child: Text("Day $days of test app"),
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),
      );
      }
          , child: Text("Login Page")),
    );
  }
}
