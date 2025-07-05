import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

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
                      ? const AssetImage('assets/images/grid2.png')
                      : const AssetImage('assets/images/grid1.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(
            top: isWide ? 71 : 44,
            left: isWide ? 71 : 0,
            right: isWide ? 112 : 0,
            bottom: isWide ? 76 : 0,
          ),
          child:
              isWide
                  ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShaderMask(
                              shaderCallback:
                                  (bounds) => const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF002F6C),
                                      Color(0xFF013D8C),
                                    ],
                                  ).createShader(bounds),
                              blendMode: BlendMode.srcIn,
                              child: Text(
                                "Online Learning \nThat Fits Your Life.",
                                style: GoogleFonts.inter(
                                  fontSize: 82,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: -4.9,
                                  height: 92.11 / 82,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 36),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/images/quote.png',
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    "Unlock limitless learning—anytime,\nanywhere. Elevate your future with online education.",
                                    style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      height: 1.6,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 36),
                            Row(
                              children: [
                                RoundedButton(
                                  width: 196,
                                  label: "Join with Us",
                                  labelStyle: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  color: const Color(0xff002F6C),
                                  icon: const Icon(
                                    size: 24,
                                    Icons.arrow_outward,
                                    color: Colors.white,
                                  ),
                                  boarderWidth: 2,
                                  height: 55,
                                  borderColor: const Color(0xff002F6C),
                                  textColor: Colors.white,
                                ),
                                const SizedBox(width: 12),
                                RoundedButton(
                                  width: 248,
                                  label: "View Online Classes",
                                  labelStyle: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff002F6C),
                                  ),
                                  color: Colors.white,
                                  boarderWidth: 1,
                                  height: 55,
                                  borderColor: const Color(0xff002F6C),
                                  textColor: const Color(0xff002F6C),
                                ),
                              ],
                            ),
                            const SizedBox(height: 36),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                _StatsColumn(
                                  number: "99",
                                  label: "Student\nSatisfaction",
                                ),
                                SizedBox(width: 53),
                                _StatsColumn(
                                  number: "45",
                                  label: "Expert\nTeachers",
                                ),
                                SizedBox(width: 53),
                                _StatsColumn(
                                  number: "88",
                                  label: "Top-Rated\nCourses",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          'assets/images/image_web.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  )
                  : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShaderMask(
                              shaderCallback:
                                  (bounds) => const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xFF002F6C),
                                      Color(0xFF013D8C),
                                    ],
                                  ).createShader(bounds),
                              blendMode: BlendMode.srcIn,
                              child: Text(
                                "Online \nLearning \nThat Fits \nYour Life.",
                                style: GoogleFonts.inter(
                                  fontSize: 71,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: -2,
                                  height: 58 / 71,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 36),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/quote.png',
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    "Unlock limitless learning—anytime, \nanywhere. Elevate your future with \nonline education.",
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
                                color: Colors.white,
                              ),
                              color: const Color(0xff002F6C),
                              icon: const Icon(
                                Icons.arrow_outward,
                                color: Colors.white,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            _StatsColumn(
                              number: "99",
                              label: "Student\nSatisfaction",
                            ),
                            SizedBox(width: 10),
                            _StatsColumn(
                              number: "45",
                              label: "Expert\nTeachers",
                            ),
                            SizedBox(width: 10),
                            _StatsColumn(
                              number: "88",
                              label: "Top-Rated\nCourses",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 27),
                      Image.asset(
                        'assets/images/image_mobile.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
        );
      },
    );
  }
}

class _StatsColumn extends StatelessWidget {
  final String number;
  final String label;

  const _StatsColumn({required this.number, required this.label});

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
                      fontSize: 35,
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
