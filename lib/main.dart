import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Bunch of linear gradients",
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.grey,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      build(Color(0xFF43CBFF), Color(0xFF9708CC), "#43CBFF",
                          "#9708CC"),
                      build(Color(0xFFF97794), Color(0xFF623AA2), "#F97794",
                          "#623AA2"),
                      build(Color(0xFF81FFEF), Color(0xFFF067B4), "#81FFEF",
                          "#F067B4"),
                      build(Color(0xFFF6D242), Color(0xFFFF52E5), "#F6D242",
                          "#FF52E5"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      build(Color(0xFFF0FF00), Color(0xFF58CFFB), "#F0FF00",
                          "#58CFFB"),
                      build(Color(0xFFEECE13), Color(0xFFB210FF), "#EECE13",
                          "#B210FF"),
                      build(Color(0xFF52E5E7), Color(0xFF130CB7), "#52E5E7",
                          "#130CB7"),
                      build(Color(0xFF92FFC0), Color(0xFF002661), "#92FFC0",
                          "#002661"),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      build(Color(0xFFEEAD92), Color(0xFF6018DC), "#EEAD92",
                          "#6018DC"),
                      build(Color(0xFFEE9AE5), Color(0xFF5961F9), "#EE9AE5",
                          "#5961F9"),
                      build(Color(0xFFFFCF71), Color(0xFF2376DD), "#FFCF71",
                          "#2376DD"),
                      build(Color(0xFFFDD819), Color(0xFFE80505), "#FDD819",
                          "#E80505"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Expanded build(
    Color a, Color b, String firstColorCode, String secondColorCode) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                gradient: LinearGradient(
                  colors: [a, b],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: a,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: b,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5, top: 2),
                        child: Text(
                          firstColorCode,
                          style: TextStyle(
                            color: a,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5, top: 2),
                        child: Text(
                          secondColorCode,
                          style: TextStyle(
                            color: b,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
