import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/personal_profile.dart';

class ThreadWritePage extends StatelessWidget {
  Widget memberCnt() {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      padding: EdgeInsets.all(8.0),
      children: [
        _memberProfile(
          '조영은',
          'assets/images/jane.jpg',
          'INFJ',
          28,
          '퍼블리셔 경력이 있습니다. 강아지 고양이 사랑합니다. 요즘 취미는 수영, 프리다이빙입니다.',
          '퍼블리셔, 리액트찍먹',
          '굿 팔로워도 능력이다(?)',
          'janecho0601@email.com',
        ),
        _memberProfile(
          '김재형',
          'assets/images/member_image2.jpg',
          'INFJ',
          29,
          '웹 기획자로 일을 했습니다. 라라랜드, 보헤미안랩소디, 인터스텔라, 오펜하이머 등 음악, 과학 영화 좋아합니다.',
          '광고홍보전공, 멀티미디어공학(복수전공), 웹기획자, 앱기획(찍먹..)',
          '한 몸 불사질러 보겠습니다.',
          'gimjh1120@gmail.com',
        ),
        _memberProfile(
          '류정현',
          'assets/images/member_image3.jpg',
          'INTP',
          25,
          '뼈를 묻겠습니다',
          '빌리어네어, 고분자공학전공 ',
          '열심히 하겠습니다.',
          'jeonghyeonairking@gmail.com',
        ),
        _memberProfile(
          '김민지',
          'assets/images/member_image4.jpg',
          'ISFP',
          00,
          '여행에 진심인 여행블로거입니다. 여행플랫폼을 만들고 싶어요~',
          '마케터, 네이버여행인플루언서, 내일모래반백살, 코린이',
          '화이팅!!!!',
          'email@email.com',
        ),
      ],
    );
  }

  Widget _memberProfile(
    String memberName,
    String profileImg,
    String mbti,
    int age,
    String introduction,
    String tmi,
    String comment,
    String email,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(() => MemberProfile(
              memberName: memberName,
              profileImg: profileImg,
              mbti: mbti,
              age: age,
              introduction: introduction,
              tmi: tmi,
              comment: comment,
              email: email,
            ));
      },
      child: Card(
        color: Colors.grey[850], // 다크 모드 카드 배경
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  profileImg,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                memberName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // 밝은 텍스트
                ),
              ),
              Text(
                '$mbti | Age: $age',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(11, 96, 176, 1), // 파란색 텍스트
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _teamIntroduction() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black87,
            const Color.fromARGB(66, 82, 82, 82),
            const Color.fromARGB(255, 78, 78, 78)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color.fromRGBO(11, 96, 176, 1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.group,
            size: 40,
            color: Color.fromRGBO(11, 96, 176, 1),
          ),
          SizedBox(height: 10),
          Text(
            '팀 소개',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(11, 96, 176, 1),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '저희 팀은 내일배움캠프 앱창업 5기 2조이며,\nFlutter와 Dart로 창업을 위해 앱제작을 배웁니다.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white, // 밝은 텍스트
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
      backgroundColor: Colors.black, // 다크 모드 배경
      appBar: AppBar(
        backgroundColor: Colors.black87, // AppBar 배경 다크 모드
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _teamIntroduction(), // 팀 소개 섹션
            SizedBox(height: 20),
            Expanded(
              child: memberCnt(),
            ),
          ],
        ),
      ),
    );
  }
}
