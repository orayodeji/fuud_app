import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 40,
              color: Color.fromRGBO(100, 99, 143, 1),
            )),
        Image.asset("assets/Logo-Blue.png"),
        Row(
          children: [
            Image.asset("assets/flag.png"),
            SizedBox(
              width: 9,
            )
          ],
        )
      ],
    );
  }
}
