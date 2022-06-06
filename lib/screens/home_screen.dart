import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course_app_flutter/screens/course_detail_screen.dart';
import 'package:online_course_app_flutter/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
          ),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          CourseDetailScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Master Class',
                    style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return const MyHorizontalList(
                      startColor: 0xFF9288E4,
                      endColor: 0xFF534EA7,
                      courseHeadline: 'Recommended',
                      courseImage: 'assets/images/img_saly10.png',
                      courseTitle: 'UI/UX DESIGNER\nBEGINNER',
                  );
                },
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Online Class',
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'From Over 80 Lectures',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: const Color(0xFF9C9A9A),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (
                  context,
                  index,
              ) =>
              MyVerticalList(
                courseImage: 'assets/images/img_sally24.png',
                courseTitle: 'Flutter Developer',
                courseDuration: '8 Hours',
                courseRating: 3.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
