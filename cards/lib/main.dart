import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsfeedWidget(title: 'News Feed'),
    );
  }
}

class News {
  final DateTime _dt;
  final String _title;
  final String _text;

  News(this._dt, this._title, this._text);
}

class NewsCard extends StatelessWidget {
  final News _news;
  const NewsCard(this._news, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.network(
                "https://www.bbc.co.uk/news/special/2015/newsspec_10857/bbc_news_logo.png?cb=1"),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Text(
                "${_news._dt.month}//${_news._dt.day}/${_news._dt.year}",
                style: const TextStyle(
                    fontSize: 10.0, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                _news._title,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              _news._text,
              maxLines: 2,
              style: const TextStyle(fontSize: 14.0),
              overflow: TextOverflow.fade,
            ),
            Row(children: [
              TextButton(child: const Text("Share"), onPressed: () => {}),
              TextButton(child: const Text("Bookmark"), onPressed: () => {}),
              TextButton(child: const Text("Link"), onPressed: () => {})
            ])
          ]),
        ),
      ),
    );
  }
}

class NewsfeedWidget extends StatelessWidget {
  final String title;
  NewsfeedWidget({super.key, required this.title});

  final List<News> _newsList = [
    News(
        DateTime(2018, 12, 1),
        "Mass shooting in Atlanta",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet " +
            "tortor pretium, interdum magna sed, pulvinar ligula."),
    News(
        DateTime(2019, 1, 12),
        "Carnival clown found drunk in Misisippi",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet " +
            "tortor pretium, interdum magna sed, pulvinar ligula."),
    News(
        DateTime(2019, 2, 12),
        "Walrus found in family pool in Florida",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet " +
            "tortor pretium, interdum magna sed, pulvinar ligula."),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> newsCards = _newsList.map((news) => NewsCard(news)).toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Feed"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: newsCards,
      ),
    );
  }
}
