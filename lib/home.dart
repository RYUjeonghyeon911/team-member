import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/members_profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _btnIntroduce() {
    return Container(
      width: 250,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => ThreadWritePage());
        },
        child: Text(
          '소개 보기',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromRGBO(11, 96, 176, 1),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 5,
        ),
      ),
    );
  }

  // 이미지 부분을 내일배움캠프 앱창업 5기 창업장이조 멤버 소개 텍스트로 변경
  Widget _IntroContainer() {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.construction, // 대장장이를 연상시키는 아이콘
            size: 100,
            color: Colors.blueAccent,
          ),
          SizedBox(height: 20),
          Text(
            '내일배움캠프 앱창업 5기\n창업장이조',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            '멤버 소개 페이지로 이동해서 확인해보세요!',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87, // 다크 모드
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  _IntroContainer(), // 텍스트 및 아이콘
                  SizedBox(height: 60),
                  _btnIntroduce(), // 소개 보기 버튼
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
