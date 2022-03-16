import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String original_language, original_title, trailer, overview, popularity, poster_path, release_date, title, vote_average, vote_count;

  const Detail(
      {Key? key,
        required this.original_language,
        required this.original_title,
        required this.trailer,
        required this.overview,
        required this.popularity,
        required this.poster_path,
        required this.release_date,
        required this.title,
        required this.vote_average,
        required this.vote_count,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("$original_title")
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("$trailer"),
              Text("$title"),
              Text("$release_date"),
              Text("$original_language"),
              Text("$overview"),
              Text("$popularity"),
              Text("$vote_average"),
              Text("$vote_count"),
              Image.network(poster_path),
            ],
          ),
        ),
      ),
    );
  }
}
