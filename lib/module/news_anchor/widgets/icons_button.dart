import 'package:flutter/material.dart';
import 'package:portfolio/module/news_anchor/utils/colors.dart';

class IconsButton extends StatelessWidget {
  final bool isSelected;
  final String selected;
  final String icon;
  final bool isBorder;
  final double size;
  final VoidCallback onClick;

  const IconsButton({
    this.isSelected = false,
    this.selected = '',
    this.isBorder = false,
    this.size = 24,
    required this.icon,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isBorder ? 4 : 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: ColorUtils.black, width: isBorder ? 1 : 0)),
      child: Image.asset(
        'images/${isSelected ? selected : icon}',
        width: size,
        height: size,
      ),
    );
  }
}
