import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/book_section.dart';
import 'package:ui_assignment/header_section.dart';
import 'package:ui_assignment/video_course_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [HeaderSection(), VideoCourseSection(), BookSection()],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(121);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff002F6C),
      elevation: 0,
      toolbarHeight: 73,
      titleSpacing: 0,
      title: Row(
        children: [
          IconButton(
            icon: Image.asset(
              'assets/images/home.png',
              height: 24,
              width: 24,
              color: Colors.white,
            ),
            onPressed: () {},
          ),

          /// Search Bar
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.28),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/lock.png',
                    color: Colors.white,
                    height: 18,
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: TextField(
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.5,
                        height: 1.0,
                        letterSpacing: 0.2,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'studypack.lk',
                        hintStyle: GoogleFonts.roboto(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.5,
                          height: 1.0,
                          letterSpacing: 0.2,
                          color: Colors.white70,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                      cursorColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Right Side Icons
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/images/icon.png',
                  height: 24,
                  width: 24,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),

      /// Bottom Bar
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Image.asset('assets/images/logo.png', height: 32),
                onPressed: () {},
              ),
              const Icon(Icons.menu, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
