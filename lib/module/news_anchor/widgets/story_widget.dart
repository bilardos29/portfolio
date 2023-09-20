import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/fonts.dart';

class StoryWidget extends StatelessWidget {
  final String image;
  final String description;
  final String author;
  final String tag;
  final String timeline;
  final VoidCallback? onClick;
  final VoidCallback? onMore;

  const StoryWidget({
    required this.image,
    required this.description,
    required this.author,
    required this.tag,
    required this.timeline,
    this.onClick,
    this.onMore,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Column(
        children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/news/$image',
                  width: 120,
                  height: 120,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 120,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(description,
                                  maxLines: 3,
                                  overflow: TextOverflow.fade,
                                  style: FontUtils.h2Bold),
                              const SizedBox(height: 6),
                              Text(
                                'By $author',
                                style: FontUtils.h3,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    tag,
                                    style: FontUtils.h3Bold,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                    '• $timeline',
                                    style: FontUtils.h3,
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: onMore,
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Icon(Icons.more_horiz),
                                ),
                              ),
                            ],
                          ),
                        ]),
                  ),
                )
              ]),
          const SizedBox(height: 12),
          Divider(
            height: 1,
            color: ColorUtils.grey.withAlpha(80),
          )
        ],
      ),
    );
  }
}
