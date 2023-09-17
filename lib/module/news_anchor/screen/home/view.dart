import 'package:flutter/material.dart';

import '../../widgets/input_widget.dart';
import '../../widgets/menu_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Sample Component'),
        MenuButton('ic_notif.png'),
        InputWidget(title: 'Placeholder', hint: 'Placeholder',),
      ],
    );
  }
}
