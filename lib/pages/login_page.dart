import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        centerTitle: true,
        title: Text("Login Page"),
      )),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
            fit: BoxFit.contain,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Welcome",
            style: TextStyle(
                fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: (){
                      print("Button is working");
                },
                    child: Text("Login"),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(30.0)
                              )
                          )
                      )
                  ),
                  ),
              ],),
            )

          ],
        )
      ),
      drawer: Drawer(),
    );
  }
}
