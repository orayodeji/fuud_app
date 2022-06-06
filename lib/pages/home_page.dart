import 'package:flutter/material.dart';
import 'package:fuud_layout/model/food_model.dart';
import 'package:fuud_layout/widgets/app_header.dart';
import 'package:fuud_layout/widgets/navigation_bar.dart';
import 'package:fuud_layout/widgets/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      body: Builder(builder: (context) {
        var width2 = MediaQuery.of(context).size.width;
        var height2 = MediaQuery.of(context).size.height;
        return SafeArea(
          child: SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                  SizedBox(
                    height: 19,
                  ),
                  AppHeader(),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 20),
                    child: Text("Want fuuD? Get fuuD!",
                        style: TextStyle(
                            fontSize: 37,
                            fontFamily: 'UberMove',
                            color: Color.fromRGBO(100, 99, 143, 1))),
                  ),
                  SizedBox(height: 6),
                  Container(
                    padding: EdgeInsets.only(left: 25, right: 20),
                    child: Text(
                      "Bring your money and get your food! \nEnter your budget and let us give you \ndifferent choices to select from",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(100, 99, 143, 0.6),
                        fontWeight: FontWeight.w100,
                        fontFamily: 'UberMove',
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 9),
                          width: MediaQuery.of(context).size.width * 0.39,
                          child: TextField(
                            showCursor: true,
                            cursorColor: Color.fromRGBO(100, 99, 143, 1),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.attach_money_outlined,
                                color: Color.fromRGBO(100, 99, 143, 1),
                              ),
                              prefixIconColor: Color.fromRGBO(100, 99, 143, 1),
                              hintText: "Amount",
                              hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(0, 0, 0, 0.3)),
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
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'UberMove',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.59,
                          child: TextField(
                            showCursor: true,
                            cursorColor: Color.fromRGBO(100, 99, 143, 1),
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.location_on_outlined,
                                color: Color.fromRGBO(100, 99, 143, 1),
                              ),
                              prefixIconColor: Color.fromRGBO(100, 99, 143, 1),
                              hintText: "Address",
                              hintStyle: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(0, 0, 0, 0.3)),
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
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'UberMove',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(100, 99, 143, 1),
                        ),
                        height: 48,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: null,
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'UberMove'),
                            ))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 20),
                    child: Text(
                      "Today's Selection",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'UberMove',
                          color: Color.fromRGBO(100, 99, 143, 1)),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                      height: height2 * 0.26,
                      child: ListView.separated(
                          shrinkWrap: true,
                          reverse: true,
                          itemCount: foodSelections.length,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) => SizedBox(
                                width: 4,
                              ),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, right: 12),
                              child: Container(
                                width: width2 * 0.38,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: width2 * 0.38,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              opacity: 0.9,
                                              image: AssetImage(
                                                  foodSelections[index]
                                                      .imgAsset),
                                              fit: BoxFit.cover),
                                          color: Colors.white.withOpacity(0.3),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      foodSelections[index].restaurantName,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(100, 99, 143, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'UberMove'),
                                    ),
                                    Text(
                                      foodSelections[index].foodName,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(100, 99, 143, 1),
                                          fontSize: 18,
                                          fontFamily: 'UberMove',
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          foodSelections[index].foodRating,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  100, 99, 143, 1),
                                              fontSize: 17,
                                              fontFamily: 'UberMove',
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color.fromRGBO(255, 193, 7, 1),
                                          size: 17,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 15, right: 20),
                      child: Text("Search For Restaurants",
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromRGBO(100, 99, 143, 1)))),
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                      showCursor: true,
                      cursorColor: Color.fromRGBO(100, 99, 143, 1),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.restaurant,
                          color: Color.fromRGBO(100, 99, 143, 1),
                        ),
                        prefixIconColor: Color.fromRGBO(100, 99, 143, 1),
                        hintText: "Restaurant Name",
                        hintStyle: TextStyle(
                            fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.3)),
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
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'UberMove',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(100, 99, 143, 1),
                        ),
                        height: 48,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: null,
                            child: Text(
                              "Search",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'UberMove'),
                            ))),
                  ),
                ])),
          ),
        );
      }),
      bottomNavigationBar: NavigationBottomBar(
        currentIndex: 0,
      ),
    );
  }
}
