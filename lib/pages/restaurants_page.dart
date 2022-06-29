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
                    return GestureDetector(
                      onTap: () => showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          enableDrag: true,
                          isDismissible: true,
                          isScrollControlled: true,
                          context: context,
                          builder: (context) => BottomSheet(
                                food: foodSelections[index],
                              )),
                      child: Container(
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
                                          color:
                                              Color.fromRGBO(100, 99, 143, 1),
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
                                          color:
                                              Color.fromRGBO(100, 99, 143, 1),
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

enum SingingCharacter { small, medium, large }

class BottomSheet extends StatefulWidget {
  BottomSheet({
    Key? key,
    required this.food,
  }) : super(key: key);
  final FoodSelection food;

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  SingingCharacter? _character = SingingCharacter.small;
  int _orderNum = 0;
  @override
  Widget build(BuildContext context) {
    return MakeDismissible(
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.4,
        builder: (_, container) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ListView(
            controller: container,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.food.imgAsset),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(widget.food.foodName,
                    style: TextStyle(
                        color: Color.fromRGBO(100, 99, 143, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'UberMove')),
              ),
              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Color.fromRGBO(196, 196, 196, 0.23),
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Size Chioce",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromRGBO(100, 99, 143, 1),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'UberMove',
                        ),
                      ),
                      Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Radio(
                                      activeColor:
                                          Color.fromRGBO(100, 99, 143, 1),
                                      focusColor:
                                          Color.fromRGBO(100, 99, 143, 1),
                                      value: SingingCharacter.small,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter? value) {
                                        setState(() {
                                          _character = value;
                                          _orderNum = 0;
                                        });
                                      }),
                                  Text(
                                    "Small",
                                    style: TextStyle(
                                        color: Color.fromRGBO(100, 99, 143, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'UberMove'),
                                  )
                                ],
                              ),
                            ),
                            _character == SingingCharacter.small
                                ? Container(
                                    width: 70,
                                    height: 18,
                                    color: Colors.white,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () => onRemoveOrder(),
                                          child: Container(
                                            height: 20,
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    100, 99, 143, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.white,
                                          child: Text(
                                            _orderNum.toString(),
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    100, 99, 143, 1),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'UberMove'),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => onAddOrder(),
                                          child: Container(
                                            height: 20,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    100, 99, 143, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Radio(
                                      activeColor:
                                          Color.fromRGBO(100, 99, 143, 1),
                                      focusColor:
                                          Color.fromRGBO(100, 99, 143, 1),
                                      value: SingingCharacter.medium,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter? value) {
                                        setState(() {
                                          _character = value;
                                          _orderNum = 0;
                                        });
                                      }),
                                  Text(
                                    "Meduim",
                                    style: TextStyle(
                                        color: Color.fromRGBO(100, 99, 143, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'UberMove'),
                                  )
                                ],
                              ),
                            ),
                            _character == SingingCharacter.medium
                                ? Container(
                                    width: 70,
                                    height: 18,
                                    color: Colors.white,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () => onRemoveOrder(),
                                          child: Container(
                                            height: 20,
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    100, 99, 143, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                        Container(
                                          color: Colors.white,
                                          child: Text(
                                            _orderNum.toString(),
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    100, 99, 143, 1),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'UberMove'),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => onAddOrder(),
                                          child: Container(
                                            height: 20,
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Color.fromRGBO(
                                                    100, 99, 143, 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Radio(
                                      activeColor:
                                          Color.fromRGBO(100, 99, 143, 1),
                                      focusColor:
                                          Color.fromRGBO(100, 99, 143, 1),
                                      value: SingingCharacter.large,
                                      groupValue: _character,
                                      onChanged: (SingingCharacter? value) {
                                        setState(() {
                                          _character = value;
                                          _orderNum = 0;
                                        });
                                      }),
                                  Text(
                                    "Large",
                                    style: TextStyle(
                                        color: Color.fromRGBO(100, 99, 143, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: 'UberMove'),
                                  )
                                ],
                              ),
                            ),
                            _character == SingingCharacter.large
                                ? Container(
                                    width: 70,
                                    height: 18,
                                    color: Colors.white,
                                    child: AnimatedContainer(
                                      duration: Duration(seconds: 2),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          GestureDetector(
                                            onTap: () => onRemoveOrder(),
                                            child: Container(
                                              height: 20,
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                size: 19,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      100, 99, 143, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                          ),
                                          Container(
                                            color: Colors.white,
                                            // height: 10,
                                            child: Text(
                                              _orderNum.toString(),
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      100, 99, 143, 1),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: 'UberMove'),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () => onAddOrder(),
                                            child: Container(
                                              height: 20,
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 19,
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      100, 99, 143, 1),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ])
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Total: # ${_orderNum * 1360}",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Color.fromRGBO(100, 99, 143, 1),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'UberMove',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromRGBO(100, 99, 143, 1)),
                  height: 40,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Add To Order",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'UberMove',
                          fontSize: 22,
                          color: Color.fromRGBO(203, 201, 255, 1),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onAddOrder() {
    setState(() {
      _orderNum++;
    });
  }

  void onRemoveOrder() {
    if (_orderNum == 0) {
      return;
    } else {
      setState(() {
        _orderNum--;
      });
    }
  }
}

class MakeDismissible extends StatelessWidget {
  const MakeDismissible({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pop(context);
      },
      child: GestureDetector(
        onTap: () {},
        child: child,
      ),
    );
  }
}
