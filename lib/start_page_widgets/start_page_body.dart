import 'dart:convert';

import 'package:flutter/material.dart';

class StartPageBody extends StatelessWidget {
  const StartPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('start_background.png'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Spacer(),
          Spacer(),
          Container(
            child: Text(
              'IT 기술문서 번역, 콘텐츠 제작 플랫폼',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Image.asset(
            'start_body_logo.png',
            width: _width / 2 < 500
                ? 500
                : _width / 2 > 700
                    ? 700
                    : _width / 2,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: _width,
            height: 2,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 352,
            height: 72,
            child: Center(
              child: Text(
                '시작하기',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(width: 4, color: Color(0xff0862c7))),
          ),
          Spacer(),
          Align(
            alignment: Alignment(1, 0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 60, 60),
              child: Container(
                width: 58,
                height: 58,
                child: IconButton(
                  onPressed: () {
                    showDialog(
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (BuildContext context) {
                        // return object of type Dialog
                        return AlertDialog(
                          backgroundColor: Colors.transparent,
                          content: Container(
                            child: Column(
                              children: [
                                Container(
                                  width: _width / 2 - 20,
                                  child: TextField(),
                                ),
                              ],
                            ),
                            width: _width / 2,
                            height: _height / 2,
                            decoration: BoxDecoration(),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff0862c7),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
