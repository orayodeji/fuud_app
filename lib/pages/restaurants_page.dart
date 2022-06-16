// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:fuud_layout/model/food_model.dart';
import 'package:fuud_layout/widgets/app_header.dart';
import 'package:fuud_layout/widgets/navigation_bar.dart';
import 'package:fuud_layout/widgets/navigation_drawer.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

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
                SizedBox(height: 19),
                AppHeader(),
                SizedBox(height: 29),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 20),
                  child: Text(
                    "Restaurants Nearby",
                    style: TextStyle(
                        color: Color.fromRGBO(100, 99, 143, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'UberMove'),
                  ),
                ),
                SizedBox(height: 19),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  itemCount: foodSelections.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      height: height2 * 0.30,
                      // color: Colors.green,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height2 * 0.20,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      foodSelections[index].imgAsset),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(foodSelections[index].restaurantName,
                              style: TextStyle(
                                  color: Color.fromRGBO(100, 99, 143, 1),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'UberMove')),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                foodSelections[index].foodName,
                                style: TextStyle(
                                  color: Color.fromRGBO(100, 99, 143, 1),
                                  fontSize: 18,
                                  fontFamily: 'UberMove',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Ready in ${foodSelections[index].timeLeft} mins',
                                style: TextStyle(
                                    color: Color.fromRGBO(100, 99, 143, 1),
                                    fontSize: 18,
                                    fontFamily: 'UberMove',
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    foodSelections[index].foodRating,
                                    style: TextStyle(
                                        color: Color.fromRGBO(100, 99, 143, 1),
                                        fontSize: 17,
                                        fontFamily: 'UberMove',
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(255, 193, 7, 1),
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "6900+ ratings",
                                    style: TextStyle(
                                        color: Color.fromRGBO(100, 99, 143, 1),
                                        fontSize: 18,
                                        fontFamily: 'UberMove',
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              Text('${foodSelections[index].distance}km',
                                  style: TextStyle(
                                      color: Color.fromRGBO(100, 99, 143, 1),
                                      fontSize: 18,
                                      fontFamily: 'UberMove',
                                      fontWeight: FontWeight.w500)),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
      }),
      bottomNavigationBar: NavigationBottomBar(currentIndex: 2),
    );
  }
}
