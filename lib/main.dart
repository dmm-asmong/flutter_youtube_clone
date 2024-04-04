import 'package:flutter/material.dart';
import 'package:flutter_youtube_clone/presentation/main_youtube_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Clone',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const YoutubeMainScreen(title: 'Youtube Clone Home Page'),
    );
  }
}
