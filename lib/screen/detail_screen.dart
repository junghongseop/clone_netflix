import 'package:clone_netflix/model/model_movie.dart';
import 'package:clone_netflix/widget/box_slider.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Movie movie;
  const DetailScreen({super.key, required this.movie});
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool like = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              const Stack(
                children: <Widget>[],
              ),
              makeMenuButton(),
            ],
          ),
        ),
      ),
    );
  }
}
