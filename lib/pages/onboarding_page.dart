import 'package:flutter/material.dart';
import 'package:fuud_layout/model/screen_model.dart';
import 'package:fuud_layout/pages/auth.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                currentPage = index;
              });
            },
            controller: _pageController,
            itemCount: screens.length,
            itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(screens[index].img),
                          opacity: 0.9,
                          fit: BoxFit.cover)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            SizedBox(height: 90),
                            Image.asset("assets/Logo.png"),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                screens[index].desc,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "UberMove"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.white,
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    if (currentPage == screens.length - 1) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Auth()));
                                    } else {
                                      _pageController.nextPage(
                                          duration: Duration(milliseconds: 600),
                                          curve: Curves.ease);
                                    }
                                  },
                                  child: Center(
                                    child: Text(
                                      currentPage == screens.length - 1
                                          ? 'Get Started'
                                          : 'Next',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color:
                                              Color.fromRGBO(100, 99, 143, 1),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
