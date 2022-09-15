import 'package:flutter/material.dart';
import 'package:uitwo/Register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/wallpaper/WallpaperD.jpg"),
                  fit: BoxFit.cover,
                  opacity: 100)),
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
                      '"Login"',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
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
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        prefixIcon: Icon(Icons.shield),
                        label: Text("Password"),
                        hintText: "Enter your Password",
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
                          child: const Text("Login",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 110, horizontal: 0),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Register()));
                        },
                        child: const Text(
                          "Don't have an account? Register",
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
