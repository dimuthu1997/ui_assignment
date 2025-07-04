import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/grid1.png'),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 44),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                const SizedBox(height: 36),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/quote.png', fit: BoxFit.cover),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "Unlock limitless learning—anytime, anywhere. Elevate your future with online education.",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.6875,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
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
                ),
                const SizedBox(height: 12),
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
                  borderColor: const Color(0xff002F6C),
                  textColor: const Color(0xff002F6C),
                ),
              ],
            ),
          ),
          const SizedBox(height: 27),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _StatsColumn(
                      number: "99",
                      plusFontSize: 35,
                      label: "Student\nSatisfaction",
                    ),
                    _StatsColumn(
                      number: "45",
                      plusFontSize: 35,
                      label: "Expert\nTeachers",
                    ),
                    _StatsColumn(
                      number: "88",
                      plusFontSize: 35,
                      label: "Top-Rated\nCourses",
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 27),
          Image.asset('assets/images/image_mobile.png', fit: BoxFit.cover),
        ],
      ),
    );
  }
}

class _StatsColumn extends StatelessWidget {
  final String number;
  final double plusFontSize;
  final String label;

  const _StatsColumn({
    required this.number,
    required this.label,
    this.plusFontSize = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 10,
              left: -4,
              right: -4,
              height: 24,
              child: Container(color: const Color(0xFFFFD230)),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: number,
                    style: GoogleFonts.inter(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: '+',
                    style: GoogleFonts.inter(
                      fontSize: plusFontSize,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.start,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.42,
            color: const Color(0xFF4A5565),
          ),
        ),
      ],
    );
  }
}
