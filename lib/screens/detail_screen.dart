import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import 'package:flutter_application_1/models/movie_model.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final String title;
  final String des;
  final String id;
  final List imgUrl;
  const DetailScreen(
      {Key? key,
      required this.title,
      required this.des,
      required this.id,
      required this.imgUrl,
     })
      : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Stack(children: [
          Positioned(
            height: 300,
            top: 112,
            left: 0,
            right: 0,
            child: PageView(
              physics: const BouncingScrollPhysics(),
              children: [
                Image.network(
                  widget.imgUrl[0],
                  fit: BoxFit.cover,
                ),
                Image.network(
                  widget.imgUrl[1],
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned(
            top: 1.5,
            left: -10,
            right: -10,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.bgColor,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 12, bottom: 10, top: 12),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  title: Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 422,
              left: 20,
              right: 20,
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.title,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 29,
                                    height: 1),
                              ),
                              SizedBox(width: size.width / 58),
                              const Text(
                                '2023',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    height: 2.2),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    const Icon(
                                      Icons.star,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                ],
                              ),
                              const Text(
                                'From 342 Users',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        'Marvel Studios',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: size.width / 30,
                            height: 1.1),
                      ),
                      SizedBox(height: size.width / 20),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          widget.des,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: size.width * 0.59,
                            height: size.height * 0.05,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueAccent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(25.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueAccent.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: const Offset(3, 0),
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blueAccent.withOpacity(0.01),
                              ),
                              onPressed: () {
                                // Navigator.of(context).push(
                                //   MaterialPageRoute(builder: (context) => const MainScreen())
                                //   );
                              },
                              child: const Text(
                                'Watch now',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                         Consumer<MoviesModel>(
                            builder: (context, movie, child) => 
                                 GestureDetector(
                            onTap: () {
                              setState(() {
                                  movie.toggleFavorite(widget.id);
                              });                         
                            },
                            child: Icon(
                              movie.isFavorite(widget.id)
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red,
                              size: 45,
                            ),
                          )
                          ),
                        
                        ],
                      ),
                    ],
                  )))
        ]));
  }
}
