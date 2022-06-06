import 'package:flutter/material.dart';
import 'package:fuud_layout/pages/sign_in.dart';
import 'package:fuud_layout/pages/sign_up.dart';

class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/page-plain.png"), fit: BoxFit.cover)),
      child: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30),
                    Image.asset("assets/Logo-Blue.png"),
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      "Want fuuD?",
                      style: TextStyle(
                          fontSize: 40,
                          decoration: TextDecoration.none,
                          fontFamily: "UberMove",
                          color: Color.fromRGBO(100, 99, 143, 1),
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sign up and let’s get you fuuD!",
                      style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.none,
                          fontFamily: "UberMove",
                          color: Color.fromRGBO(100, 99, 143, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )),
            Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Color.fromRGBO(100, 99, 143, 1),
                              style: BorderStyle.solid,
                              width: 3)),
                      height: 48,
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()));
                          },
                          child: Text(
                            "Sign In",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'UberMove',
                              fontSize: 22,
                              color: Color.fromRGBO(100, 99, 143, 1),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
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
                    SizedBox(
                      height: 50,
                    )
                  ],
                ))
          ],
        ),
      )),
    );
  }
}
