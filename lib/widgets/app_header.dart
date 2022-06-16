// ignore_for_file: unused_field

import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';
import 'package:flutter/material.dart';
import 'package:fuud_layout/model/flag_model.dart';

class AppHeader extends StatefulWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
  int _currentIndex = 3;
  final TextStyle textStyle = TextStyle(
      fontSize: 23,
      color: Color.fromRGBO(100, 99, 143, 0.4),
      fontFamily: 'UberMove',
      fontWeight: FontWeight.bold);
  final TextStyle activeTextStyle = TextStyle(
      fontSize: 34,
      color: Color.fromRGBO(100, 99, 143, 1),
      fontFamily: 'UberMove',
      fontWeight: FontWeight.bold);
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
            InkWell(
                child: Row(
                  children: [
                    Image.asset(flagSelections[_currentIndex].imgAsset),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Color.fromRGBO(100, 99, 143, 1),
                    )
                  ],
                ),
                onTap: () {
                  showAdaptiveActionSheet(
                      context: context,
                      title: Text("Language",
                          style: TextStyle(
                              color: Color.fromRGBO(100, 99, 143, 1),
                              fontSize: 28,
                              fontFamily: 'UberMove',
                              fontWeight: FontWeight.bold)),
                      actions: <BottomSheetAction>[
                        BottomSheetAction(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("English",
                                  style: _currentIndex == 0
                                      ? activeTextStyle
                                      : textStyle),
                              SizedBox(width: 10),
                              Image.asset(flagSelections[0].imgAsset),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              _currentIndex = 0;
                            });
                            Navigator.pop(context);
                          },
                        ),
                        BottomSheetAction(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Spanish",
                                style: _currentIndex == 1
                                    ? activeTextStyle
                                    : textStyle,
                              ),
                              SizedBox(width: 10),
                              Image.asset(flagSelections[1].imgAsset),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              _currentIndex = 1;
                            });
                            Navigator.pop(context);
                          },
                        ),
                        BottomSheetAction(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Deutsch",
                                  style: _currentIndex == 2
                                      ? activeTextStyle
                                      : textStyle),
                              SizedBox(width: 10),
                              Image.asset(flagSelections[2].imgAsset),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              _currentIndex = 2;
                            });
                            Navigator.pop(context);
                          },
                        ),
                        BottomSheetAction(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Français",
                                  style: _currentIndex == 3
                                      ? activeTextStyle
                                      : textStyle),
                              SizedBox(width: 10),
                              Image.asset(flagSelections[3].imgAsset),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              _currentIndex = 3;
                            });
                            Navigator.pop(context);
                          },
                        ),
                        BottomSheetAction(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Português",
                                  style: _currentIndex == 4
                                      ? activeTextStyle
                                      : textStyle),
                              SizedBox(width: 10),
                              Image.asset(flagSelections[4].imgAsset),
                            ],
                          ),
                          onPressed: () {
                            setState(() {
                              _currentIndex = 4;
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ],
                      cancelAction: CancelAction(title: const Text("Cancel")));
                }),
            SizedBox(
              width: 1,
            )
          ],
        )
      ],
    );
  }
}
