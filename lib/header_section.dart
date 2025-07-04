import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

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
          SizedBox(height: 44),
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
                SizedBox(height: 36),
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
                          height: 1.6875, // = line-height: 27px
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ],
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
              ],
            ),
          ),

          SizedBox(height: 27),
          Text("data"),
          SizedBox(height: 27),
          Image.asset('assets/images/image_mobile.png', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
