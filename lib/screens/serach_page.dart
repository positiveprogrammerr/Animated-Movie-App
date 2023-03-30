import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';
import '../models/movie_model.dart';
import 'detail_screen.dart';

class MovieSearchPage extends StatefulWidget {
  final List<MovieModel> movies;

  const MovieSearchPage({Key? key, required this.movies}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MovieSearchPageState createState() => _MovieSearchPageState();
}

class _MovieSearchPageState extends State<MovieSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";
  List<MovieModel> _searchResults = [];

 void _searchMovies() {
  setState(() {
    final uniqueMovies = <String, MovieModel>{};
    for (final movie in widget.movies) {
      final title = movie.title.toLowerCase();
      final searchText = _searchText.toLowerCase();
      if (title.contains(searchText)) {
        if (!uniqueMovies.containsKey(title)) {
          uniqueMovies[title] = movie;
        }
      }
    }
    _searchResults = uniqueMovies.values.toList();
  });
}



  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text;
        _searchMovies();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: " Search movies",
            hintStyle: TextStyle(color: Colors.white60),
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: _searchResults.isNotEmpty
          ? ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                final movie = _searchResults[index];
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      movie.imgUrl.first,
                      width: 60,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(movie.title),
                  subtitle: Text('${movie.date}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          title: movie.title,
                          des: movie.des,
                          id: movie.id,
                          imgUrl: movie.imgUrl,
                        ),
                      ),
                    );
                  },
                );
              },
            )
          : const Center(
              child: Text(
                "No movies found",
                style: TextStyle(fontSize: 18),
              ),
            ),
    );
  }
}
