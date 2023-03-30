import '../constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/main_sceen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 80, left: 20, right: 20, bottom: 10),
              margin: EdgeInsets.only(bottom: size.height * 0.2),
              child: Image.network(
                'https://raw.githubusercontent.com/pictureuzcom/pictures/main/logo-dreamworks-animation-dreamwork-1d47c5ca7a5e27436eaa53473fb0c623.png',
                width: 400,
                height: 400,
              ),
            ),
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
                  backgroundColor: Colors.blueAccent.withOpacity(0.01),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  MainScreen()));
                },
                child: const Text(
                  'Enter now',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
  }
}
