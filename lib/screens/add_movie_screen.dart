// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/colors.dart';

import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/models/movie_model.dart';

class AddMoviePage extends StatefulWidget {
  final categoryList;
  final Function addNewMovie;
  const AddMoviePage({
    Key? key,
    required this.categoryList,
    required this.addNewMovie,
  }) : super(key: key);

 

  @override
  _AddMoviePageState createState() => _AddMoviePageState();
}

class _AddMoviePageState extends State<AddMoviePage> {
  late String categoryId = '';
  final _titleController = TextEditingController();
  final _dateController = TextEditingController();
  final _starController = TextEditingController();
  final _desController = TextEditingController();
  final _imgUrl1Controller = TextEditingController();
  final _imgUrl2Controller = TextEditingController();
  final _imgUrl3Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    categoryId = widget.categoryList[0].id;
  }

  void _save() {
    final title = _titleController.text;
    final date = int.tryParse(_dateController.text) ?? 0;
    final star = double.tryParse(_starController.text) ?? 0.0;
    final des = _desController.text;
    final imgUrl1 = _imgUrl1Controller.text;
    final imgUrl2 = _imgUrl2Controller.text;
    final imgUrl3 = _imgUrl3Controller.text;

    if (title.isEmpty ||
        date == 0 ||
        star == 0.0 ||
        des.isEmpty ||
        imgUrl1.isEmpty ||
        imgUrl2.isEmpty ||
        imgUrl3.isEmpty) {
      return;
    }

    final movie = MovieModel(
        id: DateTime.now().toString(),
        categoryId: categoryId,
        imgUrl: [imgUrl1, imgUrl2, imgUrl3],
        title: title,
        date: date,
        star: star,
        des: des);

    widget.addNewMovie(movie);
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        centerTitle: true,
        title: const Text('Add Movie'),
        actions: [
          IconButton(
            onPressed: _save,
            icon: const Icon(Icons.save),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             DropdownButton(
              isExpanded: true,
              value: categoryId,
              onChanged: (value) {
                setState(() {
                  categoryId = value as String;
                });
              },
              items: (widget.categoryList as List<CategoryModel>)
                  .map((category) => DropdownMenuItem(
                        value: category.id,
                        child: Text(category.title),
                      ))
                  .toList(),
),
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: _dateController,
                decoration: const InputDecoration(labelText: 'Release Date'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _starController,
                decoration: const InputDecoration(labelText: 'Star Rating'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: _desController,
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 5,
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _imgUrl1Controller,
                decoration: const InputDecoration(
                    labelText: 'Enter Image URL 1'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _imgUrl2Controller,
              decoration: const InputDecoration(
                    labelText: 'Enter Image URL 2'),
              ),
               const SizedBox(height: 10),
              TextField(
                controller: _imgUrl3Controller,
              decoration: const InputDecoration(
                    labelText: 'Enter Image URL 3'),
              ),
          ])
          )
        )
        );
  }
  }