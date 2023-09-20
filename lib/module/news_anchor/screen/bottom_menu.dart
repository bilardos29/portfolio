import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_news_presenter.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  late MainNewsPresenter presenter;

  @override
  Widget build(BuildContext context) {
    presenter = Provider.of<MainNewsPresenter>(context);
    return Container(
      color: Colors.grey[100],
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        BottomMenuIcon(
          image: 'ic_home.png',
          imageSelected: 'ic_home_selected.png',
          isSelected: presenter.bottomMenu == 0,
          onClick: () {
            setState(() {
              presenter.bottomMenu = 0;
            });
          },
        ),
        BottomMenuIcon(
          image: 'ic_search.png',
          imageSelected: 'ic_search_selected.png',
          isSelected: presenter.bottomMenu == 1,
          onClick: () {
            setState(() {
              presenter.bottomMenu = 1;
            });
          },
        ),
        BottomMenuIcon(
          image: 'ic_bookmark.png',
          imageSelected: 'ic_bookmark_selected.png',
          isSelected: presenter.bottomMenu == 2,
          onClick: () {
            setState(() {
              presenter.bottomMenu = 2;
            });
          },
        ),
      ]),
    );
  }
}

class BottomMenuIcon extends StatelessWidget {
  final String image;
  final String? imageSelected;
  final bool isSelected;
  final VoidCallback? onClick;

  const BottomMenuIcon(
      {required this.image,
      this.imageSelected,
      this.isSelected = false,
      this.onClick,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 36),
        child: Image.asset(
          'images/news/${isSelected ? imageSelected : image}',
          width: 28,
          height: 28,
        ),
      ),
    );
  }
}
