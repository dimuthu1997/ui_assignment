import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/grid1.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 91),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Discover & Share Educational Books",
              style: GoogleFonts.inter(
                fontSize: 36,
                fontWeight: FontWeight.w700,
                height: 1.0,
                letterSpacing: -2,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 60),
          HorizontalCourseList(),
          SizedBox(height: 28),
          HorizontalCourseList(),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                RoundedButton(
                  width: double.infinity,
                  label: "Explore All Books",
                  color: const Color(0xff002F6C),
                  icon: const Icon(
                    Icons.arrow_outward,
                    color: Colors.white,
                    size: 20,
                  ),
                  boarderWidth: 2,
                  height: 54,
                  borderColor: const Color(0xff002F6C),
                  textColor: Colors.white,
                  labelStyle: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.3,
                    height: 1.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Need to publish your book here,",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        letterSpacing: 0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Join Now",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.5,
                        letterSpacing: 0,
                        color: Color(0xff002F6C),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff002F6C),
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 98),
        ],
      ),
    );
  }
}

class HorizontalCourseList extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'title': 'Human Anatomy & Physiology Essentials',
      'price': '\Rs. 49.99',
      'image': 'assets/images/book.png',
    },
    {
      'title': 'Foundations of Modern Physics',
      'price': '\Rs. 39.99',
      'image': 'assets/images/book.png',
    },
    {
      'title': 'Foundations of Modern Physics',
      'price': '\Rs. 59.99',
      'image': 'assets/images/book.png',
    },
  ];

  HorizontalCourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 276,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        separatorBuilder: (context, index) => const SizedBox(width: 24),
        itemBuilder: (context, index) {
          final course = courses[index];
          return SizedBox(
            width: 176,
            height: 265,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 176,
                  height: 221,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E7EB),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(course['image']!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                Text(
                  course['title']!,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                    letterSpacing: -0.3,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  course['price']!,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.0,
                    letterSpacing: 0.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
