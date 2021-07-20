import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openitprac/login_page_widgets/login_page_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 620,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '로그인',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 52,
            ),
            Container(
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 39, bottom: 20, top: 26, right: 0),
                    hintText: "이메일을 입력해주세요"),
              ),
              width: 620,
              height: 74,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffC0C0C0), width: 2),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 39, bottom: 20, top: 26, right: 0),
                    hintText: "이메일을 입력해주세요"),
              ),
              width: 620,
              height: 74,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffC0C0C0), width: 2),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              height: 11,
            ),
            Align(
              alignment: Alignment(1, 0),
              child: Text(
                '비밀번호를 잊으셨나요?',
                style: TextStyle(
                    color: Color(0xffD7D7D7),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment(1, 0),
              child: Text(
                '비밀번호 찾기',
                style: TextStyle(
                    color: Color(0xff7A7A7A),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Container(
              child: Center(
                child: Text(
                  '로그인하기',
                  style: TextStyle(
                      color: Color(0xff0762C8),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              width: 620,
              height: 74,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Color(0xff0762C8), width: 4)),
            ),
            SizedBox(
              height: 52,
            ),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: '아직 오픈잇의 회원이 아니신가요?',
                    style: TextStyle(
                        color: Color(0xffA0A0A0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: ' 회원가입하기',
                    style: TextStyle(
                        color: Color(0xffcb730c),
                        fontSize: 16,
                        fontWeight: FontWeight.bold))
              ]),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 317,
              height: 2,
              color: Color(0xffA0A0A0),
            )
          ],
        ),
      ),
    );
  }
}
