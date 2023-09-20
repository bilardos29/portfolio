import 'package:flutter/material.dart';
import 'package:portfolio/module/news_anchor/model/news_model.dart';
import 'package:portfolio/module/news_anchor/widgets/story_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
            itemCount: dummyData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, idx) {
              StoryModel item = dummyData[idx];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: StoryWidget(
                    image: item.image,
                    description: item.description!,
                    author: item.author!,
                    tag: item.tag!,
                    timeline: item.timeline!),
              );
            })
      ],
    );
  }
}
