import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, size: 30, color: Colors.blue)),
        title: const Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 40, right: 50),
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      "Sign up to continue exploring the ocean",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "and maybe you will find Atlantis",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          hintMaxLines: 3,
                          labelText: "Full Name",
                          prefixIcon: Icon(Icons.person_rounded),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          hintMaxLines: 3,
                          labelText: "Email Address",
                          prefixIcon: Icon(Icons.email_rounded),
                          hintText: "Email@mail.com",
                          alignLabelWithHint: true,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          labelText: "Password",
                          hintText: "aaaaaaaaa",
                          prefixIcon: Icon(Icons.lock_rounded),
                          suffixIcon: Icon(Icons.visibility_off),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          hintMaxLines: 3,
                          labelText: "Date Of Birth",
                          prefixIcon: Icon(Icons.calendar_today_sharp),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 210),
                        child: const Text(
                          "Forget Password",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        color: Colors.lightBlue,
                        height: 60,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30),
                        child: const Text(
                          "By Creating an account you agree to our Terms & Condition and agree to Privacy Policy",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
