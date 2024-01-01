import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: const TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 18,
                  ),
                  Text(
                    '홈',
                    style: TextStyle(fontSize: 9),
                  ),
                ],
              ),
            ),
            Tab(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 18,
                  ),
                  Text(
                    '검색',
                    style: TextStyle(fontSize: 9),
                  ),
                ],
              ),
            ),
            Tab(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.save_alt,
                    size: 18,
                  ),
                  Text(
                    '저장한 컨텐츠 목록',
                    style: TextStyle(fontSize: 8),
                  ),
                ],
              ),
            ),
            Tab(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.list,
                    size: 18,
                  ),
                  Text(
                    '더보기',
                    style: TextStyle(fontSize: 9),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
