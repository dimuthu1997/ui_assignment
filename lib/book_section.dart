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
          Text("Data"),
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
