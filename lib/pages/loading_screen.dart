import 'dart:async';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:openitprac/controller/route_controller.dart';

// ignore: must_be_immutable
class LoadingScreen extends StatefulWidget {
  LoadingScreen({Key? key}) : super(key: key);
  RouteController controller = Get.put(RouteController());

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with TickerProviderStateMixin {
  late AnimationController acontroller1 =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  late Animation<double> animation1 =
      Tween<double>(begin: 0, end: 16).animate(acontroller1)
        ..addListener(() {
          setState(() {});
        });
  late AnimationController acontroller2 =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  late Animation<double> animation2 =
      Tween<double>(begin: 0, end: 16).animate(acontroller2)
        ..addListener(() {
          setState(() {});
        });
  late AnimationController acontroller3 =
      AnimationController(vsync: this, duration: Duration(seconds: 1));
  late Animation<double> animation3 =
      Tween<double>(begin: 0, end: 16).animate(acontroller3)
        ..addListener(() {
          setState(() {});
        });

  @override
  void initState() {
    super.initState();
    increament_dots();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff0762C8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'loading_white_logo.png',
                width: 521,
                height: 91,
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: 107,
                // height: ,
                child: Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Loading',
                            style:
                                TextStyle(color: Colors.white, fontSize: 28))),
                    Obx(() => Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: AnimatedOpacity(
                              // If the widget is visible, animate to 0.0 (invisible).
                              // If the widget is hidden, animate to 1.0 (fully visible).
                              opacity:
                                  widget.controller.dot_on_1.value ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              // The green box must be a child of the AnimatedOpacity widget.
                              child: Container(
                                width: animation1.value,
                                height: animation1.value,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: AnimatedOpacity(
                              // If the widget is visible, animate to 0.0 (invisible).
                              // If the widget is hidden, animate to 1.0 (fully visible).
                              opacity:
                                  widget.controller.dot_on_2.value ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              // The green box must be a child of the AnimatedOpacity widget.
                              child: Container(
                                width: animation2.value,
                                height: animation2.value,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: AnimatedOpacity(
                              // If the widget is visible, animate to 0.0 (invisible).
                              // If the widget is hidden, animate to 1.0 (fully visible).
                              opacity:
                                  widget.controller.dot_on_3.value ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 500),
                              // The green box must be a child of the AnimatedOpacity widget.
                              child: Container(
                                width: animation3.value,
                                height: animation3.value,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                          )
                        ])),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  Future<void> increament_dots() async {
    int i = 0;
    Timer.periodic(new Duration(seconds: 1), (timer) {
      i++;
      if (i == 1) {
        widget.controller.dot_on_1.value = true;

        acontroller1.forward();
      } else if (i == 2) {
        widget.controller.dot_on_2.value = true;

        acontroller2.forward();
      } else {
        widget.controller.dot_on_3.value = true;

        acontroller3.forward();
      }
      if (widget.controller.num_of_dots.value == 4) {
        timer.cancel();
      }
    });
  }
}
