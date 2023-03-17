import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg/bg_login.png",
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 43,
                ),
                Theme(
                    data: ThemeData(
                      primaryColor: Colors.white,
                      primaryColorDark: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Email',
                          labelText: 'Email',
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.grey,
                          ),
                          suffixIcon: const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          ),
                          suffixStyle: const TextStyle(color: Colors.green)),
                    )),
                const SizedBox(
                  height: 25,
                ),
                Theme(
                    data: ThemeData(
                      primaryColor: Colors.white,
                      primaryColorDark: Colors.white,
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Password',
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                          suffixStyle:
                              const TextStyle(color: Colors.blueAccent)),
                    )),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(
                        color: Colors.blueAccent,
                        width: 3.0), // Set border width
                    borderRadius: const BorderRadius.all(
                        Radius.circular(20.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Container(
                  child: Text('Forgot your password'),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  child: Text('Or connect with'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    FloatingActionButton.extended(

                      label: Text('FaceBook',style: TextStyle(fontSize: 15)), // <-- Text
                      backgroundColor: Colors.blue,
                      icon: Icon( // <-- Icon
                        Icons.facebook,
                        size: 15.0,
                      ),
                      onPressed: () {},
                    ),SizedBox(width: 20,), FloatingActionButton.extended(
                      label: Text('Twitter',style: TextStyle(fontSize: 15)), // <-- Text
                      backgroundColor: Colors.blueAccent,
                      icon: Icon( // <-- Icon
                        FontAwesomeIcons.twitter,
                        size: 15.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont\'t have account?',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
