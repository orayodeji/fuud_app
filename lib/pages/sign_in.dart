import 'package:flutter/material.dart';
import 'package:fuud_layout/pages/home_page.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
                Image.asset("assets/Logo-Blue.png"),
                SizedBox(
                  height: 80,
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
                    obscureText: true,
                    cursorColor: Color.fromRGBO(100, 99, 143, 1),
                    decoration: InputDecoration(
                      labelText: "Password",
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
                                builder: (context) => HomePage()));
                      },
                      child: Text(
                        "Sign In",
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
                      "Don't have an account?",
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
                      child: Text("Sign Up",
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
