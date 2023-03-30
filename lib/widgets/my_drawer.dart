// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/screens/add_movie_screen.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/screens/favourite_page.dart';
import 'package:flutter_application_1/screens/serach_page.dart';

import '../models/movie_model.dart';

// ignore: must_be_immutable
class MyDrawer extends StatefulWidget {
 
    const MyDrawer({Key? key,}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
  final moviesModel = Provider.of<MoviesModel>(context).movies;
  final add = Provider.of<MoviesModel>(context).add;
  final categories = Provider.of<CategoriesModel>(context).categories;
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(37), bottomLeft: Radius.circular(37)),
      child: Drawer(
        backgroundColor: AppColors.bgColor,
        child: Container(
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.only(
              topLeft: Radius.circular(37),
              bottomLeft: Radius.circular(37),
            ),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 17, 54),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                    
                  ),
                  border: Border.all(color: Colors.white)
                ),
                child: Stack(
                  children: [
                   const Positioned(
                      left: 20,
                      top: 40,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://github.com/pictureuzcom/pictures/blob/main/spider.png?raw=true',
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Welcome back,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Spider Man',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text(
                  'Home Page',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
               ListTile(
                leading: const Icon(Icons.search, color: Colors.white),
                title: const Text(
                  'Search Page',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MovieSearchPage(movies: moviesModel ,),));
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const Text(
                  'Favorite Page',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FavouritePage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.add, color: Colors.white),
                title: const Text(
                  'New Movie Add Page',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) =>AddMoviePage(addNewMovie: add, categoryList: categories,)));
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
