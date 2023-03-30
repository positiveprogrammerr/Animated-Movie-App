import '../models/movie_model.dart';
import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';

const _selectedTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);

const _unselectedTextStyle = TextStyle(
  color: Colors.grey,
  fontWeight: FontWeight.bold,
  fontSize: 14,
);

class BottomPart extends StatefulWidget {
  const BottomPart({super.key});

  @override
  State<BottomPart> createState() => _BottomPartState();
}

class _BottomPartState extends State<BottomPart> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final movies = Provider.of<MoviesModel>(context).movies;
    final function = Provider.of<MoviesModel>(context);
    final categories = Provider.of<CategoriesModel>(context).categories;
    List list = [];

    if (currentindex == 0) {
      list = movies
          .where((movie) => movie.categoryId == categories[0].id)
          .toList();
    } else if (currentindex == 1) {
      list = movies
          .where((movie) => movie.categoryId == categories[1].id)
          .toList();
    } else if (currentindex == 2) {
      list = movies
          .where((movie) => movie.categoryId == categories[2].id)
          .toList();
    } else if (currentindex == 3) {
      list = movies
          .where((movie) => movie.categoryId == categories[3].id)
          .toList();
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  currentindex = 0;
                });
                _onButtonPressed(0);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        currentindex == 0 ? Colors.white : Colors.transparent,
                    radius: 3,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'For you',
                    style: currentindex == 0
                        ? _selectedTextStyle
                        : _unselectedTextStyle,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  currentindex = 1;
                });
                _onButtonPressed(1);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        currentindex == 1 ? Colors.white : Colors.transparent,
                    radius: 3,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Popular',
                    style: currentindex == 1
                        ? _selectedTextStyle
                        : _unselectedTextStyle,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  currentindex = 2;
                });
                _onButtonPressed(2);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        currentindex == 2 ? Colors.white : Colors.transparent,
                    radius: 3,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Top Films',
                    style: currentindex == 2
                        ? _selectedTextStyle
                        : _unselectedTextStyle,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  currentindex = 3;
                });
                _onButtonPressed(3);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor:
                        currentindex == 3 ? Colors.white : Colors.transparent,
                    radius: 3,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Last Films',
                    style: currentindex == 3
                        ? _selectedTextStyle
                        : _unselectedTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.011),
        SizedBox(
          height: 200,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailScreen(
                              title: list[index].title,
                              des: list[index].des,
                              id: list[index].id,
                              imgUrl: [
                                list[index].imgUrl[1],
                                list[index].imgUrl[2]
                              ],
                             ),
                        ));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          list[index].imgUrl[1],
                          width: 115,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 33,
                      left: 13,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            list[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            list[index].date.toString(),
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _onButtonPressed(int index) {
    setState(() {
      currentindex = index;
    });
  }
}
