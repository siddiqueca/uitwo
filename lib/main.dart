import 'package:flutter/material.dart';

import 'Login.dart';
import 'Register.dart';

void main() {
  runApp(MaterialApp(
    home: MyHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/wallpaper/Wallp.png"),
                fit: BoxFit.cover)),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.all(45),
                    child: Text('"SHOE STORE"',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold))),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                        width: 380,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.yellow,
                                shape: const StadiumBorder()),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text("Login",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal))))),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                        width: 380,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.yellow,
                                shape: const StadiumBorder()),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Register()));
                            },
                            child: const Text("Register",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal))))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
