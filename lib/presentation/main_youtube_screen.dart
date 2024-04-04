import 'package:flutter/material.dart';

class YoutubeMainScreen extends StatefulWidget {
  const YoutubeMainScreen({super.key, required String title});

  @override
  State<YoutubeMainScreen> createState() => _YoutubeMainScreenState();
}

class _YoutubeMainScreenState extends State<YoutubeMainScreen> {
  late NavigationDestinationLabelBehavior _labelBehavior = NavigationDestinationLabelBehavior
      .alwaysShow; // 기본값 설정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/youtube_logo.png'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.screen_share),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('화면 미러링')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // 검색 기능 구현
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // 알림 기능 구현
            },
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.deepPurple,
        labelBehavior: _labelBehavior, // labelBehavior 설정
        destinations: const <NavigationDestination>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: '쇼츠',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: '구독',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: '보관함',
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              OverflowBar(
                spacing: 10.0,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _labelBehavior =
                            NavigationDestinationLabelBehavior.alwaysShow;
                      });
                    },
                    child: const Text('전체'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _labelBehavior =
                            NavigationDestinationLabelBehavior.alwaysShow;
                      });
                    },
                    child: const Text('게임'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _labelBehavior =
                            NavigationDestinationLabelBehavior.alwaysShow;
                      });
                    },
                    child: const Text('뉴스'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _labelBehavior =
                            NavigationDestinationLabelBehavior.alwaysShow;
                      });
                    },
                    child: const Text('실시간'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _labelBehavior =
                            NavigationDestinationLabelBehavior.alwaysShow;
                      });
                    },
                    child: const Text('믹스'),
                  ),
                ],
              ),
            ],
          ),
          Expanded( // ListView.builder를 포함시키기 위해 Expanded 사용
              child: _buildContentList('전체')
          ),
        ],
      ),
    );
  }
}

  Widget _buildContentList(String selectedCategory) {
    List<String> titles = ['제목1', '제목2', '제목3'];
    List<String> imagePaths = [
      'images/thumbnail01.jpg',
      'images/thumbnail02.jpg',
      'images/thumbnail02.jpg'
    ];


    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(imagePaths[index]), // 인덱스에 따라 이미지 동적 할당
          title: Text(titles[index]), // 인덱스에 따라 제목 동적 할당
          onTap: () {
            // 여기에 타일 클릭 시 실행될 로직 추가
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${titles[index]} 선택됨')),
            );
          },
        );
      },
    );
  }
