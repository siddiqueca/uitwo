import 'package:flutter/material.dart';
import 'package:uitwo/Login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/wallpaper/asd.jpg"),
                  opacity: 50,
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.yellow,
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.black),
              )),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      '"Registration"',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.person),
                        label: Text("Full Name"),
                        hintText: "Enter your Full Name",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.phone),
                        label: Text("Phone Number"),
                        hintText: "Enter your Phone Number with country code",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.email),
                        label: Text("Email"),
                        hintText: "Enter your Email Address",
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscuringCharacter: '*',
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.shield),
                        label: Text("Password"),
                        hintText: "Enter your New Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 55,
                      width: 470,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.yellow,
                              shape: const StadiumBorder()),
                          onPressed: () {},
                          child: const Text(
                            "Create Account",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 150),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: const Text(
                          'Already have an account? Login',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              decoration: TextDecoration.underline),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
