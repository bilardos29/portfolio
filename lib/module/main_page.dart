import 'package:flutter/material.dart';
import 'package:portfolio/module/news_anchor/screen/home/view.dart';

import 'news_anchor/screen/main_news.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MainNews()
      ),
    );
  }
}
