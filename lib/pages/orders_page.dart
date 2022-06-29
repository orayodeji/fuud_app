import 'package:flutter/material.dart';
import 'package:fuud_layout/model/food_model.dart';
import 'package:fuud_layout/widgets/navigation_bar.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Orders',
              style: TextStyle(
                  color: Color.fromRGBO(100, 99, 143, 1),
                  fontSize: 22,
                  fontFamily: 'Ubermove',
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: foodSelections.length,
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Container(
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          foodSelections[index].imgAsset),
                                      fit: BoxFit.cover)),
                            ),
                            title: Text(
                              foodSelections[index].foodName.toString(),
                              style: TextStyle(
                                  color: Color.fromRGBO(100, 99, 143, 1),
                                  fontSize: 22,
                                  fontFamily: 'Ubermove',
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              index % 2 == 0 ? "Small" : "Medium",
                              style: TextStyle(
                                  color: Color.fromRGBO(100, 99, 143, 1),
                                  fontSize: 15,
                                  fontFamily: 'Ubermove',
                                  fontWeight: FontWeight.w700),
                            ),
                            trailing: Text(
                              foodSelections[index].foodPrice.toString(),
                              style: TextStyle(
                                  color: Color.fromRGBO(100, 99, 143, 1),
                                  fontSize: 18,
                                  fontFamily: 'Ubermove',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Divider(
                            color: Color.fromRGBO(100, 99, 143, 1),
                            thickness: 1,
                          ),
                        ],
                      );
                    })),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBottomBar(currentIndex: 1),
    );
  }
}
