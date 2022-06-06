import 'package:flutter/material.dart';
import 'package:fuud_layout/pages/sign_in.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/page-plain.png"), fit: BoxFit.cover)),
        child: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 15,
                // ),
                Image.asset("assets/Logo-Blue.png"),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: TextField(
                    cursorColor: Color.fromRGBO(100, 99, 143, 1),
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      // hintText: "Hello World",
                      labelText: "Username",
                      // focusColor: Color.fromRGBO(100, 99, 143, 1),
                      // focusColor: Colors.red,

                      labelStyle:
                          TextStyle(color: Color.fromRGBO(100, 99, 143, 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(100, 99, 143, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'UberMove'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    cursorColor: Color.fromRGBO(100, 99, 143, 1),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      // hintText: "Hello World",
                      labelText: "Email Address",
                      // focusColor: Color.fromRGBO(100, 99, 143, 1),
                      // focusColor: Colors.red,

                      labelStyle:
                          TextStyle(color: Color.fromRGBO(100, 99, 143, 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(100, 99, 143, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'UberMove'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Color.fromRGBO(100, 99, 143, 1),
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle:
                          TextStyle(color: Color.fromRGBO(100, 99, 143, 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(100, 99, 143, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'UberMove'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: TextField(
                    obscureText: true,
                    cursorColor: Color.fromRGBO(100, 99, 143, 1),
                    decoration: InputDecoration(
                      // hintText: "Hello World",
                      labelText: "Password",
                      // focusColor: Color.fromRGBO(100, 99, 143, 1),
                      // focusColor: Colors.red,

                      labelStyle:
                          TextStyle(color: Color.fromRGBO(100, 99, 143, 1)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid)),
                    ),
                    style: TextStyle(
                        color: Color.fromRGBO(100, 99, 143, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'UberMove'),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(100, 99, 143, 1)),
                  height: 48,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'UberMove',
                          fontSize: 22,
                          color: Color.fromRGBO(203, 201, 255, 1),
                        ),
                      )),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Color.fromRGBO(100, 99, 143, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'UberMove'),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                      },
                      child: Text("Sign In",
                          style: TextStyle(
                              color: Color.fromRGBO(203, 201, 255, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'UberMove')),
                    )
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
