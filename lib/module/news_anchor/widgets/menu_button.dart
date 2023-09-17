import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/module/news_anchor/utils/colors.dart';

class MenuButton extends StatelessWidget {
  final String imgIcon;
  final String label;
  final VoidCallback? onClick;
  final ValueChanged<bool>? onChanged;
  final bool toggleVal;
  final bool isToogle;

  const MenuButton(
    this.imgIcon, {
    this.label = 'Placeholder',
    this.onClick,
    this.onChanged,
    this.toggleVal = false,
    this.isToogle = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Image.asset(
                'images/news/$imgIcon',
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
                    Text(label),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: isToogle
                          ? SizedBox(
                              width: 36,
                              height: 24,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: CupertinoSwitch(
                                  value: toggleVal,
                                  onChanged: onChanged,
                                  trackColor: Colors.grey[500],
                                ),
                              ),
                            )
                          : Image.asset(
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
          ]),
    );
  }
}
