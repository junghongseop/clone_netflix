import 'package:clone_netflix/model/model_movie.dart';
import 'package:flutter/material.dart';


class CarouselImage extends StatefulWidget {
  final List<Movie> movies;

  const CarouselImage({required this.movies});

  _CarouselImageState createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  late List<Movie> movies;
  late List<Widget> images;
  late List<String> keywords;
  late List<bool> likes;
  int _currentPage = 0;
  late String _currentKeyword;

  @override
  void initState() {
    super.initState();
    movies = widget.movies;
    images = movies.map((m) => Image.asset('./images/' + m.poster)).toList();
    keywords = movies.map((m) => m.keyword).toList();
    likes = movies.map((m) => m.like).toList();
    _currentKeyword = keywords[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
          ),
          CarouselSlider(
            items: images,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
                _currentKeyword = keywords[_currentPage];
              });
            },
          ),
          Container(
            child: Text(_currentKeyword),
          )
        ],
      ),
    );
  }
}
