import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> cardData = [
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
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              child: Column(
                children: [
                  ShaderMask(
                    shaderCallback:
                        (bounds) => const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFF002F6C), Color(0xFF013D8C)],
                        ).createShader(bounds),
                    blendMode: BlendMode.srcIn,
                    child: Text(
                      "Online Learning That Fits Your Life.",
                      style: GoogleFonts.inter(
                        fontSize: 71,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -2,
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 36),
                  Text(
                    "Unlock limitless learning—anytime, anywhere. Elevate your future with online education.",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.6875,
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(height: 36),
                  RoundedButton(
                    width: double.infinity,
                    label: "Join with Us",
                    labelStyle: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: -0.3,
                      color: Colors.white,
                    ),
                    color: Color(0xff002F6C),
                    icon: Icon(
                      Icons.arrow_outward,
                      color: Colors.white,
                      size: 20,
                    ),
                    boarderWidth: 2,
                    height: 54,
                    borderColor: Color(0xff002F6C),
                    textColor: Colors.white,
                  ),
                  SizedBox(height: 12),
                  RoundedButton(
                    width: double.infinity,
                    label: "View Online Classes",
                    labelStyle: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: -0.3,
                      color: Color(0xff002F6C),
                    ),
                    color: Colors.white,
                    boarderWidth: 1,
                    height: 54,
                    borderColor: Color(0xff002F6C),
                    textColor: Color(0xff002F6C),
                  ),
                  SizedBox(height: 27),
                  Text("data"),
                  SizedBox(height: 27),
                  Image.asset(
                    'assets/images/image_mobile.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(height: 86),
                  Text(
                    "Study Smarter with On-Demand Video Courses",
                    style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                      letterSpacing: -2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 51),
                  Image.asset(
                    'assets/images/image2_mobile.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 22),

                  Column(
                    children: [
                      ...List.generate(3, (index) {
                        final item = cardData[index];
                        return Container(
                          width: 328,
                          margin: const EdgeInsets.only(bottom: 12),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: Row(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 21,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(
                                          999,
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          item['title']!.toUpperCase(),
                                          style: GoogleFonts.inter(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            height: 1.0,
                                            letterSpacing: 0,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      item['subtitle']!,
                                      style: GoogleFonts.inter(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 1.3,
                                        letterSpacing: -0.3,
                                        color: Colors.white70,
                                      ),
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),

                      // View All Button
                      RoundedButton(
                        width: 111,
                        label: "View All",
                        labelStyle: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          height: 1.0,
                          letterSpacing: -0.3,
                          color: Color(0xff002F6C),
                        ),
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_outward,
                          color: Color(0xff002F6C),
                          size: 20,
                        ),
                        radius: 50,
                        boarderWidth: 2,
                        height: 30,
                        textColor: Color(0xff002F6C),
                        isIconRight: true,
                      ),
                    ],
                  ),

                  SizedBox(height: 78),
                ],
              ),
            ),

            Container(
              color: Colors.yellow,
              child: Column(
                children: [
                  SizedBox(height: 91),
                  Text(
                    "Discover & Share Educational Books",
                    style: GoogleFonts.inter(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      height: 1.0,
                      letterSpacing: -2,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 60),
                  Text("Data"),
                  SizedBox(height: 50),
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

                  SizedBox(height: 98),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
