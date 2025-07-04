import 'package:flutter/material.dart';
import 'package:ui_assignment/book_section.dart';
import 'package:ui_assignment/header_section.dart';
import 'package:ui_assignment/video_course_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff002F6C),
        elevation: 0,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png', height: 40),
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white, size: 24),
              onPressed: () {},
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeaderSection(),
            VideoCourseSection(),
            BookSection(),
          ],
        ),
      ),
    );
  }
}
