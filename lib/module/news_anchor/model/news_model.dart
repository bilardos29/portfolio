class StoryModel {
  final String image;
  final String? description;
  final String? title;
  final String? author;
  final String? tag;
  final String? timeline;

  StoryModel(this.image,
      {this.description, this.title, this.author, this.tag, this.timeline});
}

List<StoryModel> get dummyData => [
      StoryModel('ic_sample.png',
          description: 'Monarch population soars 4,900 percent since last year '
              'in thrilling 2021 western migration',
          author: 'Andy Corbley',
          tag: 'World',
          timeline: '12m ago'),
      StoryModel('ic_sample2.jpg',
          description:
              'The Horrifying Star Wars Holidays Special Has Been Given An '
              'Unofficial 4K Upgrade',
          author: 'Jane Smith',
          tag: 'Entertainment',
          timeline: '10h ago'),
      StoryModel('ic_sample3.jpg',
          description:
              'NASA’s \$10 billion James Webb Space Telescope Launches An '
              'Epic Mission To Study Early Universe',
          author: 'Maureen Jones',
          tag: 'Science',
          timeline: '1d ago'),
    ];
