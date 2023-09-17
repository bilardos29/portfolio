import 'package:flutter/material.dart';
import 'package:portfolio/module/news_anchor/utils/colors.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Image.asset(
          'images/news/ic_notif.png',
          width: 24,
          height: 24,
          color: Colors.black,
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Placeholder'),
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Image.asset(
                  'images/news/ic_right.png',
                  width: 24,
                  height: 24,
                ),
              )
            ],
          ),
          const SizedBox(height: 12),
          Divider(
            height: 1,
            color: ColorUtils.grey.withAlpha(80),
          )
        ]),
      )
    ]);
  }
}
