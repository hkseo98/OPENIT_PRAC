import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openitprac/controller/route_controller.dart';
import 'package:openitprac/pages/login_page.dart';
import 'package:openitprac/start_page_widgets/start_page_body.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class StartPage extends StatelessWidget {
  StartPage({Key? key}) : super(key: key);
  RouteController controller = Get.put(RouteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color(0xffE8E8E8),
          title: Row(
            children: [
              Spacer(),
              TextButton(
                onPressed: () {
                  controller.now_route.value = '';
                },
                child: Center(
                  child: Image.asset(
                    'start_title.png',
                    width: 148,
                    height: 33,
                  ),
                ),
              ),
              Spacer(),
              SvgPicture.asset(
                'notification.svg',
              ),
              SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                'settings.svg',
              ),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  // 로그인 페이지로
                  controller.now_route.value = 'login';
                },
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: SvgPicture.asset(
                      'user.svg',
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 30, 0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        body: Obx(() => controller.now_route.value == 'login'
            ? LoginPage()
            : StartPageBody()));
  }
}
