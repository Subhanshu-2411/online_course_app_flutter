import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList({
    Key? key,
    required this.startColor,
    required this.endColor,
    required this.courseHeadline,
    required this.courseImage,
    required this.courseTitle,
    } ) : super(key: key);

  final String courseHeadline;
  final String courseImage;
  final String courseTitle;
  final int startColor;
  final int endColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25,
      ),
      child: Container(
        width: 250,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: <Color>[
              Color(startColor),
              Color(endColor),
            ],
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 10,
              left: 15,
              child: Container(
                height: 40,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFAFA8EE),
                  borderRadius: BorderRadius.circular(36)
                ),
                child: Text(
                  courseHeadline,
                  style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 15,
              child: Text(
                courseTitle,
                style: GoogleFonts.roboto(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                courseImage,
                scale: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
