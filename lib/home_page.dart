import 'package:flutter/material.dart';
import 'detail_movie.dart';
import 'data_movie.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
      ),
      body: GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          final DataMovie movie = getDataMovie[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Detail(
                  original_language: movie.original_language,
                  poster_path: movie.poster_path,
                  trailer: movie.trailer,
                  overview: movie.overview,
                  title: movie.title,
                  popularity: movie.popularity.toString(),
                  original_title: movie.original_title,
                  release_date: movie.release_date,
                  vote_average: movie.vote_average.toString(),
                  vote_count: movie.vote_count.toString(),
                );
              }));
            },
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Image.network(
                          movie.poster_path,
                          width: 500,
                        ),
                      )),
                  Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Text(
                                movie.original_title,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                movie.release_date,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                movie.popularity.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ))),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
