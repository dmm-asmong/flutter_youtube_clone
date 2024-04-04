import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class YoutubeMainScreen extends StatelessWidget {
  const YoutubeMainScreen({super.key, required String title});

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
        // onDestinationSelected: (int index) {
        //   setState(() {
        //     currentPageIndex = index;
        //   });
        // },
        indicatorColor: Colors.amber,
        // selectedIndex: currentPageIndex,
        destinations: const <Widget>[
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
          Image.asset(
            'images/thumbnail01.jpg',
            width: double.infinity,
          ),
          const Text('타이틀'),
          const Text('서브타이틀'),
        ],
      ),
    );
  }
}
