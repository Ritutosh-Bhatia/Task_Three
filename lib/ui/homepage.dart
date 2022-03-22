import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'login.dart';
import 'signup.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.only(right: 20, top: 100),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: 45 * pi / 180,
                  child: Image.asset(
                    "images/scuba.png",
                    width: 90,
                    height: 90,
                  ),
                ),
                const Text(
                  "Scuba",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Dive anywhere You Want !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Running out of the breath is not a problem",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 20),
              child: Column(
                children: [
                  MaterialButton(
                    minWidth: double.infinity,
                    color: Colors.lightBlue,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "SIGNUP",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    color: Colors.white,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()));
                    },
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.lightBlue),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(left: 90, right: 70),
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
    );
  }
}
