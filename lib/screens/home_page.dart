import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_animation/screens/detail_page.dart';
import 'package:planet_animation/screens/model_class.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> with TickerProviderStateMixin {
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
      appBar: AppBar(
        title: Text("GALAXY PLANETS"),
        centerTitle: true,
        backgroundColor: Color(0xff43c1ff),
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: planets.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Detail_Page(i)));
            },
            child: Padding(
              padding: EdgeInsets.only(top: 30, left: 15, right: 20),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 200,
                      width: 320,
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
                          Padding(
                            padding: EdgeInsets.only(left: 70),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      planets[i].name,
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Milkyway Glaxey",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 3,
                                      width: 30,
                                      color: Color(0xff43c1ff),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        Image(
                                          image: AssetImage("assets/img/d.png"),
                                          height: 20,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          planets[i].distance,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        SizedBox(width: 10),
                                        Image(
                                          image: AssetImage("assets/img/g.png"),
                                          height: 20,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          planets[i].gravity,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45),
                    child: RotationTransition(
                      turns: rotationController,
                      child: Image.asset(
                        planets[i].img,
                        height: 100,
                      ),
                    ),

                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


