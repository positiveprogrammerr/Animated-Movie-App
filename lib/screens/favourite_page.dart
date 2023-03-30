import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:provider/provider.dart';
import '../models/movie_model.dart';
import 'detail_screen.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {

    final movieList = Provider.of<MoviesModel>(context).favourite_Movies;
     final data = Provider.of<MoviesModel>(context);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Favourites',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: movieList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
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
                              300, // set the width of the image as per your requirement
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
              ],
            ),
          );
        },
      ),
    );
  }
}
