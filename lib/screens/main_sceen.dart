import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import '../models/category_model.dart';
import '../models/movie_model.dart';
import '../widgets/bottom_part.dart';
import '../widgets/middle_part.dart';
import '../widgets/my_drawer.dart';
import '../widgets/top_films.dart';

class MainScreen extends StatefulWidget with ChangeNotifier{
   MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final movies  =  Provider.of<MoviesModel>(context).movies;
    final categories  =  Provider.of<CategoriesModel>(context).categories;
    return Scaffold(
      endDrawer:  MyDrawer(),
      key: _scaffoldKey,
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.034),
            Padding(
              padding: EdgeInsets.only(
                  top: size.width * 0.04,
                  left: size.width * 0.04,
                  right: size.width * 0.04),
              child: ListTile(
                contentPadding: const EdgeInsets.all(0),
                leading: const CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(
                      'https://github.com/pictureuzcom/pictures/blob/main/spider.png?raw=true'),
                ),
                title: const Text(
                  'Welcome back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                trailing: IconButton(
                  icon: SvgPicture.asset('assets/menu_icon.svg'),
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
                subtitle: const Text(
                  'Spider Man',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: const Text(
                'New release.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * 0.016),
            const TopFilms(),
            SizedBox(height: size.height * 0.007),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: const Text(
                'Continue Watching.',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ),
            SizedBox(height: size.height * 0.025),
            const MiddlePart(),
            SizedBox(height: size.height * 0.012),
            const BottomPart()
          ],
        ),
      ),
    );
  }
  }