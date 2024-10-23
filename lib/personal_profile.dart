import 'package:flutter/material.dart';

class MemberProfile extends StatelessWidget {
  final String memberName;
  final String profileImg;
  final String mbti;
  final int age;
  final String introduction;
  final String tmi;
  final String comment;
  final String email;

  const MemberProfile({
    Key? key,
    required this.memberName,
    required this.profileImg,
    required this.mbti,
    required this.age,
    required this.introduction,
    required this.tmi,
    required this.comment,
    required this.email,
  }) : super(key: key);

  Widget _profileBox(String title, String content) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850], // 다크 모드 배경 색상
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color.fromRGBO(11, 96, 176, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold), // 밝은 파란색 텍스트
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.grey[800], // 다크 모드 배경
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Text(
              content,
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // 다크 모드 배경색
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Member Profile',
            style: TextStyle(color: Colors.white)), // AppBar 텍스트 색상
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 상단 프로필 영역
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Color.fromRGBO(11, 96, 176, 1), width: 2),
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(profileImg),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '안녕하세요, $memberName 입니다.',
                    style: TextStyle(
                        color: Colors.white, // 밝은 텍스트
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'MBTI: $mbti',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color.fromRGBO(11, 96, 176, 1)),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Age: $age',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Color.fromRGBO(11, 96, 176, 1)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Color.fromRGBO(11, 96, 176, 1)),
                      SizedBox(width: 5),
                      Text(
                        email, // 밝은 파란색으로 텍스트
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color.fromRGBO(11, 96, 176, 1)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 하단 프로필 박스 영역
            _profileBox('자기소개', introduction),
            _profileBox('TMI', tmi),
            _profileBox('한마디', comment),
          ],
        ),
      ),
    );
  }
}
