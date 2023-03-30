import 'package:flutter/material.dart';
import '../screens/detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/models/movie_model.dart';
import 'package:flutter_application_1/models/category_model.dart';

// ignore_for_file: depend_on_referenced_packages

class TopFilms extends StatelessWidget {
  const TopFilms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<MoviesModel>(context).movies;
    final categories = Provider.of<CategoriesModel>(context).categories;
    final function = Provider.of<MoviesModel>(context);
    final size = MediaQuery.of(context).size;

    // Filter the movies by category ID
    final movieList =
        movies.where((movie) => movie.categoryId == categories[2].id).toList();

    return Padding(
      padding: EdgeInsets.only(left: size.width * 0.039),
      child: SizedBox(
        height: 200,
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: movieList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            final text = movieList[index].title;
            final textPainter = TextPainter(
                textDirection: TextDirection.ltr,
                text: TextSpan(
                    text: text,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)));
            textPainter.layout();
            final textWidth = textPainter.width;
            double num = 0;

            if (movieList[index].star == 1) {
              num = 0.61;
            } else if (movieList[index].star == 2) {
              num = 0.30;
            } else if (movieList[index].star == 3) {
              num = 0.48;
            } else if (movieList[index].star == 4) {
              num = 0.52;
            } else if (movieList[index].star == 5) {
              num = 0.40;
            }

            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          title: movieList[index].title,
                          des: movieList[index].des,
                          id: movieList[index].id,
                          imgUrl: [
                            movieList[index].imgUrl[0],
                            movieList[index].imgUrl[2]
                          ],
                        )));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 190,
                      width: 360,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          movieList[index].imgUrl[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 150,
                      left: 12,
                      right: -5,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                text,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                  width: size.width *
                                      (1 - num - textWidth / size.width)),
                              Row(
                            
                                children: List.generate(  movieList[index].star.toInt(),
                                    (index) {
                                  return const Icon(
                                    Icons.star_rounded,
                                    size: 15,
                                    color: Colors.yellow,
                                  );
                                }),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'Marvel Studios',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
                                ),
                              ),
                              SizedBox(width: size.width * 0.5),
                              const Text(
                                'From 342 users',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
