import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_assignment/book_section.dart';
import 'package:ui_assignment/header_section.dart';
import 'package:ui_assignment/video_course_section.dart';
import 'package:ui_assignment/widgets/button_rounded_edge.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedMenu = 'Home';

  @override
  Widget build(BuildContext context) {
    final bool isWeb = MediaQuery.of(context).size.width >= 900;

    return Scaffold(
      appBar:
          isWeb
              ? WebAppBar(
                selectedItem: selectedMenu,
                onItemSelected: (item) => setState(() => selectedMenu = item),
              )
              : const CustomAppBar(),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [HeaderSection(), VideoCourseSection(), BookSection()],
          ),
        ),
      ),
    );
  }
}

// ----------------------------- MOBILE APP BAR -----------------------------
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

// ----------------------------- WEB APP BAR -----------------------------
class WebAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String selectedItem;
  final Function(String) onItemSelected;

  const WebAppBar({
    super.key,
    required this.selectedItem,
    required this.onItemSelected,
  });

  @override
  Size get preferredSize => const Size.fromHeight(88);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.fromLTRB(20, 12, 16, 12),
      decoration: BoxDecoration(
        color: const Color(0xff002F6C),
        borderRadius: BorderRadius.circular(18),
        border: Border(
          bottom: BorderSide(color: Colors.black.withOpacity(0.1), width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/images/logo.png', height: 40),
              const SizedBox(width: 77),
              Row(
                children: [
                  _NavItem(
                    title: "Home",
                    isSelected: selectedItem == "Home",
                    onTap: () => onItemSelected("Home"),
                  ),
                  _NavItem(
                    title: "Exams",
                    isSelected: selectedItem == "Exams",
                    onTap: () => onItemSelected("Exams"),
                  ),
                  _NavItem(
                    title: "Online Classes",
                    isSelected: selectedItem == "Online Classes",
                    onTap: () => onItemSelected("Online Classes"),
                  ),
                  _NavItem(
                    title: "Teachers",
                    isSelected: selectedItem == "Teachers",
                    onTap: () => onItemSelected("Teachers"),
                  ),
                  _NavItem(
                    title: "About Us",
                    isSelected: selectedItem == "About Us",
                    onTap: () => onItemSelected("About Us"),
                  ),
                ],
              ),
            ],
          ),

          Row(
            children: [
              Container(
                width: 318,
                height: 44,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0xff001F47),

                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: TextField(
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      height: 1.0,
                      letterSpacing: 0.0,
                      color: const Color(0xff001F47),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Image.asset(
                        'assets/images/search.png',
                        height: 20,
                        width: 20,
                        color: Colors.white,
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minHeight: 20,
                        minWidth: 40,
                      ),
                      hintText: 'Search...',
                      hintStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.0,
                        letterSpacing: 0.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
              ),

              const SizedBox(width: 16),

              RoundedButton(
                width: 110,
                label: "Login",
                labelStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff002F6C),
                ),
                color: Colors.white,
                icon: const Icon(
                  Icons.login,
                  size: 16,
                  color: Color(0xff002F6C),
                ),
                boarderWidth: 2,
                height: 44,
                textColor: const Color(0xff002F6C),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ----------------------------- NAV ITEM -----------------------------
class _NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const _NavItem({
    required this.title,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                color:
                    isSelected ? Colors.white : Colors.white.withOpacity(0.8),
              ),
            ),
            const SizedBox(height: 12),
            if (isSelected)
              Container(height: 2, width: 73, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
