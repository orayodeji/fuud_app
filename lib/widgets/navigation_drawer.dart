import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: Container(
          // color: Colors.red,
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage("assets/page-1.jpg"), fit: BoxFit.cover)),
          child: ListView(
            children: <Widget>[
              // The Image And Details
              InkWell(
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      child: Row(children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/face-one.jpg'),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ojo Okafor",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontFamily: 'UberMove',
                                  color: Color.fromRGBO(100, 99, 143, 1)),
                            ),
                            Text(
                              "fuud_bank@ojo.okafor",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'UberMove',
                                  color: Color.fromRGBO(100, 99, 143, 1)),
                            ),
                          ],
                        )
                      ]))),
              ListTile(
                title: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'UberMove',
                      color: Color.fromRGBO(100, 99, 143, 1)),
                ),
                leading: Icon(
                  Icons.home_outlined,
                  size: 35,
                  color: Color.fromRGBO(100, 99, 143, 1),
                ),
              ),
              ListTile(
                title: Text(
                  "Restaurant",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'UberMove',
                      color: Color.fromRGBO(100, 99, 143, 1)),
                ),
                leading: Icon(
                  Icons.restaurant_menu_outlined,
                  size: 35,
                  color: Color.fromRGBO(100, 99, 143, 1),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "usiness",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'UberMove',
                      color: Color.fromRGBO(100, 99, 143, 1)),
                ),
                leading: Icon(
                  Icons.person_add_alt_outlined,
                  size: 35,
                  color: Color.fromRGBO(100, 99, 143, 1),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Wallet",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'UberMove',
                      color: Color.fromRGBO(100, 99, 143, 1)),
                ),
                leading: Icon(
                  Icons.wallet_outlined,
                  size: 35,
                  color: Color.fromRGBO(100, 99, 143, 1),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Offers",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'UberMove',
                      color: Color.fromRGBO(100, 99, 143, 1)),
                ),
                leading: Icon(
                  Icons.timelapse_outlined,
                  size: 35,
                  color: Color.fromRGBO(100, 99, 143, 1),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Orders",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'UberMove',
                      color: Color.fromRGBO(100, 99, 143, 1)),
                ),
                leading: Icon(
                  Icons.list_alt_outlined,
                  size: 35,
                  color: Color.fromRGBO(100, 99, 143, 1),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'UberMove',
                      color: Color.fromARGB(255, 167, 26, 37)),
                ),
                leading: Icon(
                  Icons.logout_outlined,
                  size: 35,
                  color: Color.fromARGB(255, 167, 26, 37),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
