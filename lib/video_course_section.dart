import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class VideoCourseSection extends StatelessWidget {
  const VideoCourseSection({super.key});

  final List<Map<String, String>> cardData = const [
    {
      'image': 'assets/images/image3_mobile.png',
      'title': 'Lesson 01',
      'subtitle': 'Newton’s Laws in Real Life',
    },
    {
      'image': 'assets/images/image3_mobile.png',
      'title': 'Lesson 02',
      'subtitle': 'The Magic of Electromagnetism',
    },
    {
      'image': 'assets/images/image3_mobile.png',
      'title': 'Lesson 03',
      'subtitle': 'Velocity & Acceleration',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 900;

        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image:
                  isWide
                      ? AssetImage('assets/images/b2.png')
                      : AssetImage('assets/images/m2.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(
            left: isWide ? 112 : 0,
            right: isWide ? 112 : 0,
            top: isWide ? 158 : 0,
            bottom: isWide ? 172 : 0,
          ),
          child:
              isWide
                  ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Study Smarter \nwith On-Demand \nVideo Courses",
                                  style: GoogleFonts.inter(
                                    fontSize: 48,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2,
                                    letterSpacing: -1.2,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 32),
                                ...cardData
                                    .map((item) => _buildCourseCard(item))
                                    .toList(),
                                const SizedBox(height: 80),
                              ],
                            ),

                            Positioned(
                              bottom: 75,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: RoundedButton(
                                  width: 111,
                                  label: "View All",
                                  labelStyle: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                    height: 1.0,
                                    letterSpacing: -0.3,
                                    color: const Color(0xff002F6C),
                                  ),
                                  color: Colors.white,
                                  icon: const Icon(
                                    Icons.arrow_outward,
                                    color: Color(0xff002F6C),
                                    size: 20,
                                  ),
                                  radius: 50,
                                  boarderWidth: 2,
                                  height: 30,
                                  textColor: const Color(0xff002F6C),
                                  isIconRight: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(width: 102),

                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          'assets/images/image2_web.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
                  : Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 86),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Study Smarter with \nOn-Demand Video \nCourses",
                              style: GoogleFonts.inter(
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                                height: 1.2,
                                letterSpacing: -1.2,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),
                          Image.asset(
                            'assets/images/image2_mobile.png',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          const SizedBox(height: 24),
                          ...cardData
                              .map(
                                (item) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: _buildCourseCard(item),
                                ),
                              )
                              .toList(),
                          const SizedBox(height: 95),
                        ],
                      ),

                      Positioned(
                        bottom: 90,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: RoundedButton(
                            width: 111,
                            label: "View All",
                            labelStyle: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              height: 1.0,
                              letterSpacing: -0.3,
                              color: const Color(0xff002F6C),
                            ),
                            color: Colors.white,
                            icon: const Icon(
                              Icons.arrow_outward,
                              color: Color(0xff002F6C),
                              size: 20,
                            ),
                            radius: 50,
                            boarderWidth: 2,
                            height: 30,
                            textColor: const Color(0xff002F6C),
                            isIconRight: true,
                          ),
                        ),
                      ),
                    ],
                  ),
        );
      },
    );
  }

  Widget _buildCourseCard(Map<String, String> item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                item['image']!,
                width: 86,
                height: 61,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBlurBadge(item['title']!),
                  const SizedBox(height: 10),
                  Text(
                    item['subtitle']!,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white70,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBlurBadge(String title) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          height: 21,
          width: 90,
          decoration: BoxDecoration(
            color: const Color(0x55FFFFFF),
            borderRadius: BorderRadius.circular(999),
          ),
          alignment: Alignment.center,
          child: Text(
            title.toUpperCase(),
            style: GoogleFonts.inter(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
