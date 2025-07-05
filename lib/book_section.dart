import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class BookSection extends StatelessWidget {
  const BookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb = constraints.maxWidth >= 900;
        Widget exploreSection = Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedButton(
              width: 243,
              label: "Explore All Books",
              color: const Color(0xff002F6C),
              icon: const Icon(
                Icons.arrow_outward,
                color: Colors.white,
                size: 20,
              ),
              boarderWidth: 2,
              height: 55,
              borderColor: const Color(0xff002F6C),
              textColor: Colors.white,
              labelStyle: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.3,
                height: 1.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Need to publish your book here,",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "Join Now",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: Color(0xff002F6C),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        );

        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  isWeb
                      ? const AssetImage('assets/images/grid3.png')
                      : const AssetImage('assets/images/grid1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 91),

              if (isWeb)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 112),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          "Discover & Share \nEducational Books",
                          style: GoogleFonts.inter(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            height: 1.0,
                            letterSpacing: -2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 40),
                      Expanded(flex: 1, child: exploreSection),
                    ],
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Discover & Share \nEducational Books",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        height: 1.0,
                        letterSpacing: -2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

              const SizedBox(height: 60),

              HorizontalCourseList(),
              if (!isWeb) ...[
                const SizedBox(height: 28),
                HorizontalCourseList(),
                const SizedBox(height: 50),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: exploreSection,
                ),
              ],

              if (isWeb) const SizedBox(height: 195),
              if (!isWeb) const SizedBox(height: 98),
            ],
          ),
        );
      },
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
