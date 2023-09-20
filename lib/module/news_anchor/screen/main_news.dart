import 'package:flutter/material.dart';
import 'package:portfolio/module/news_anchor/screen/bottom_menu.dart';
import 'package:portfolio/module/news_anchor/screen/home/view.dart';

class MainNews extends StatefulWidget {
  const MainNews({Key? key}) : super(key: key);

  @override
  State<MainNews> createState() => _MainNewsState();
}

class _MainNewsState extends State<MainNews> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomMenu(),
      body: HomePage(),
    );
  }
}
