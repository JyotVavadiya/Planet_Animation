import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model_class.dart';

class Detail_Page extends StatefulWidget {
  int i;

  Detail_Page(this.i);

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page>
    with TickerProviderStateMixin {
  late AnimationController rotationController;

  @override
  void initState() {
    super.initState();
    rotationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );
    rotationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e3963),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Stack(
                    alignment: Alignment(0, -2),
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Color(0xff464577),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              new BoxShadow(
                                offset: Offset(2, 2),
                                color: Color(0xff34345b),
                                blurRadius: 10,
                                spreadRadius: 6,
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              planets[widget.i].name,
                              style: TextStyle(
                                  fontSize: 32,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Milkyway Glaxey",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage("assets/img/d.png"),
                                  height: 30,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  planets[widget.i].distance,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 18),
                                ),
                                SizedBox(width: 30),
                                Image(
                                  image: AssetImage("assets/img/g.png"),
                                  height: 30,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  planets[widget.i].gravity,
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 400,
                                  color: Color(0xff3e3963),
                                  child: Column(

                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: double.infinity,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15),),
                                          color: Color(0xff43c1ff),
                                        ),
                                        child: Text("Welcome to ${planets[widget.i].name}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),),
                                      ),
                                      SizedBox(height: 30,),
                                      RotationTransition(
                                        turns: rotationController,
                                        child: Image.asset(
                                          planets[widget.i].img,
                                          height: 100,
                                        ),
                                      ),
                                      SizedBox(height: 30,),
                                      Text("Distance to Sun", style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.7),),),
                                      Text(planets[widget.i].sunDistance, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),),
                                      SizedBox(height: 20,),
                                      Text("Distance to Earth", style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.7),),),
                                      Text(planets[widget.i].earthDistance, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: RotationTransition(
                            turns: rotationController,
                            child: Image.asset(
                              planets[widget.i].img,
                              height: 150,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "OVERVIEW",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      planets[widget.i].overview,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7), fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff43c1ff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  "<  BACK",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
