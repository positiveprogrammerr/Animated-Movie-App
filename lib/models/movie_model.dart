import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';

class MovieModel {
  String id;
  String categoryId;
  List<String> imgUrl = [];
  String title;
  int date;
  double star;
  String des;

  MovieModel(
      {required this.id,
      required this.categoryId,
      required this.imgUrl,
      required this.title,
      required this.date,
      required this.star,
      required this.des});
}

class MoviesModel with ChangeNotifier {
  int _index = 0;
  int get index {
    return _index;
  }

  final List<MovieModel> _favourite_movies = [];

  final List<MovieModel> _movies = [
     MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/meat-ball/meat1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/meat-ball/meat2.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/meat_ball.png'
        ],
        title: 'Meat Ball',
        date: 2008,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/minions.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m2.png'
        ],
        title: 'Minions',
        date: 2001,
        star: 2),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/minions.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m2.png'
        ],
        title: 'Minions',
        date: 2001,
        star: 2),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/monsters.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons2.png',
        ],
        title: 'Monsters',
        date: 1995,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/monsters.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons2.png',
        ],
        title: 'Monsters',
        date: 1995,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/rio.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio2.png',
        ],
        title: 'Rio',
        date: 2003,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/panda2.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p2.png'
        ],
        title: 'Panda 3',
        date: 20017,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/panda2.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p2.png'
        ],
        title: 'Panda 3',
        date: 20017,
        star: 5),
MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/meat-ball/meat1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/meat-ball/meat2.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/meat_ball.png'
        ],
        title: 'Meat Ball',
        date: 2008,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/minions.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m2.png'
        ],
        title: 'Minions',
        date: 2001,
        star: 2),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/minions.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/minions/m2.png'
        ],
        title: 'Minions',
        date: 2001,
        star: 2),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/monsters.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons2.png',
        ],
        title: 'Monsters',
        date: 1995,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/monsters.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/monsters/mons2.png',
        ],
        title: 'Monsters',
        date: 1995,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/rio.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio2.png',
        ],
        title: 'Rio',
        date: 2003,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/panda2.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p2.png'
        ],
        title: 'Panda 3',
        date: 20017,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/panda2.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p2.png'
        ],
        title: 'Panda 3',
        date: 20017,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/turbo.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/turbo/turbo1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/turbo/turbo2.png',
        ],
        title: 'Turbo',
        date: 2012,
        star: 3),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/turbo.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/turbo/turbo1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/turbo/turbo2.png',
        ],
        title: 'Turbo',
        date: 2012,
        star: 3),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/wall-e.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/wall-e/wall1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/wall-e/wall2.png',
        ],
        title: 'Wall-E',
        date: 2007,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[1].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/fotball/f1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/fotball.png',
          'https://github.com/pictureuzcom/pictures/blob/main/animated%20movies/detail/fotball/f2.png?raw=true',
        ],
        title: 'Football',
        date: 2018,
        star: 2),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[1].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/ice/i1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/ice.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/ice/i2.png',
        ],
        title: 'Ice Age',
        date: 2001,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[1].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/inside/in1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/inside.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/inside/in2.png'
        ],
        title: 'Inside Out',
        date: 2000,
        star: 3),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[1].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/madagascar/m1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/madagascar.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/madagascar/m2.png'
        ],
        title: 'Madagascar',
        date: 2010,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[1].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p2.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/panda3.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/panda/p1.png'
        ],
        title: 'Panda 3',
        date: 2015,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[3].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/puss%20boots/puss1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/puss.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/puss%20boots/puss2.png'
        ],
        title: 'Puss in Boots',
        date: 2001,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[3].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/rio.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio2.png'
        ],
        title: 'Rio 1',
        date: 1998,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[3].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/puss%20boots/puss1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/puss.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/puss%20boots/puss2.png'
        ],
        title: 'Puss in Boots',
        date: 2001,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[3].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/rio.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/rio/rio2.png'
        ],
        title: 'Rio 1',
        date: 1998,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[2].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/baymax.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/baymax/b1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/baymax/b2.png',
        ],
        title: 'Baymax',
        date: 2010,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[0].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/baymax/b1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/thumbnail/baymax.jpg',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/baymax/b2.png',
        ],
        title: 'Baymax',
        date: 2010,
        star: 5),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[3].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/soul/s1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/soul.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/soul/s2.png'
        ],
        title: 'Soul',
        date: 1996,
        star: 4),
    MovieModel(
        id: UniqueKey().toString(),
        categoryId: CategoriesModel().categories[3].id,
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imgUrl: [
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/shrek/sh1.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/short/shrek.png',
          'https://raw.githubusercontent.com/pictureuzcom/pictures/main/animated%20movies/detail/shrek/sh2.png'
        ],
        title: 'Shrek',
        date: 1996,
        star: 4),
  ];

  void toggleFavorite(String id) {
    int index = _favourite_movies.indexWhere((movie) => movie.id == id);
    if (index >= 0) {
      _favourite_movies.removeAt(index);
    } else {
      MovieModel movie = _movies.firstWhere((movie) => movie.id == id);
      _favourite_movies.add(movie);
    }
 notifyListeners();
  }

void add(MovieModel movie){
  _movies.add(movie);
}


  bool isFavorite(String id) {
    return _favourite_movies.any((movie) => movie.id == id);
  }

  List<MovieModel> get movies {
    return _movies;
  }

  List<MovieModel> get favourite_Movies {
    return _favourite_movies;
  }
}
