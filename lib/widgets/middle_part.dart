import '../models/movie_model.dart';
import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../screens/detail_screen.dart';
import 'package:provider/provider.dart';

class MiddlePart extends StatelessWidget {
  const MiddlePart({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = Provider.of<MoviesModel>(context).movies;
    final categories = Provider.of<CategoriesModel>(context).categories;
    final function = Provider.of<MoviesModel>(context);
    final movieList =
        movies.where((movie) => movie.categoryId == categories[1].id).toList();
    return SizedBox(
      height: 187, // set the height of the container as per your requirement
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              title: movieList[index].title,
                              des: movieList[index].des,
                              id: movieList[index].id,
                              imgUrl: [
                                movieList[index].imgUrl[0],
                                movieList[index].imgUrl[1],
                              ],
                            )));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      movieList[index].imgUrl[0],
                      width:
                          180, // set the width of the image as per your requirement
                      height:
                          140, // set the height of the image as per your requirement
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movieList[index].title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Episode ${movieList[index].star}',
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
    );
  }
}
