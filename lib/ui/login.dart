import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'password.dart';


class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

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
          "Login",
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
                      "Welcome Drivers",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Please log in to continue!",
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
                  height: 100,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          hintMaxLines: 3,
                          labelText: "Email Address",
                          prefixIcon: Icon(Icons.email_rounded),
                          hintText: "ass@mail",
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
                      LoginForm(),
                      // const TextField(
                      //   obscureText: true,
                      //   decoration: InputDecoration(
                      //     alignLabelWithHint: true,
                      //     labelText: "Password",
                      //     hintText: "aaaaaaaa",
                      //     prefixIcon: Icon(Icons.lock_rounded),
                      //     suffixIcon: Icon(Icons.visibility),
                      //     contentPadding:
                      //         EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      //     enabledBorder: OutlineInputBorder(
                      //         borderSide: BorderSide(color: Colors.grey)),
                      //     border: OutlineInputBorder(
                      //         borderSide: BorderSide(color: Colors.grey)),
                      //   ),
                      // ),
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
                        height: 90,
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
