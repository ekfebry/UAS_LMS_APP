import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/home_tab.dart';
import '../widgets/classes_tab.dart';
import '../widgets/profile_tab.dart';
import '../widgets/notifications_tab.dart';

class LeftSlideInPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  LeftSlideInPageRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: const Duration(milliseconds: 300),
          reverseTransitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const Offset begin = Offset(1.0, 0.0); 
            const Offset end = Offset.zero;
            
            final Animation<Offset> slideAnimation = Tween<Offset>(
              begin: begin,
              end: end,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut, 
            ));

            return SlideTransition(
              position: slideAnimation,
              child: child,
            );
          },
        );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

 @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      HomeTab(),
      ClassesTab(onBack: () => _onItemTapped(0)),
      NotificationsTab(onBack: () => _onItemTapped(0)),
    ];

     return Scaffold(
      body: Column(
        children: [
          if (_selectedIndex != 2 && _selectedIndex != 1)
            Container(
              height: 80,
              color: const Color(0xFFB74848),
              child: Stack(
                children: [
                  Positioned(
                    top: 37,
                    left: 13,
                    child: SizedBox(
                      width: 165,
                      height: 40,
                      child: Text(
                        'Hallo,\nEKA FEBRIYANTI KHOLIFAH',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.white,
                          height: 1.0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 258,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/profile');
                      },
                      child: Container(
                        width: 105,
                        height: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xFFAF1116),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x40000000),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 15,
                              child: Text(
                                'MAHASISWA',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9,
                                  color: Colors.white,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 331.39,
                    child: Container(
                      width: 32.61363983154297,
                      height: 31,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFFFFFFF),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 38,
                    left: 335.46,
                    child: Container(
                      width: 24.46,
                      height: 21.14,
                      child: Image.asset('assets/images/pengguna.png', fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          if (_selectedIndex != 2)
            Container(
              width: 375,
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xFFB74848),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x40000000),
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Home Icon
                  Positioned(
                    top: 8,
                    left: 40,
                    child: GestureDetector(
                      onTap: () => _onItemTapped(0),
                      child: Icon(
                        Icons.home,
                        color: _selectedIndex == 0 ? Colors.white : Colors.white70,
                        size: 27.944664001464844,
                      ),
                    ),
                  ),
                  // Home Text
                  Positioned(
                    top: 35,
                    left: 40,
                    child: GestureDetector(
                      onTap: () => _onItemTapped(0),
                      child: Text(
                        'Home',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: _selectedIndex == 0 ? Colors.white : Colors.white70,
                          height: 1.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  // Classes Icon
                  Positioned(
                    top: 6,
                    left: 165,
                    child: GestureDetector(
                      onTap: () => _onItemTapped(1),
                      child: Icon(
                        Icons.school,
                        color: _selectedIndex == 1 ? Colors.white : Colors.white70,
                        size: 30.944664001464844,
                      ),
                    ),
                  ),
                  // Classes Text
                  Positioned(
                    top: 35,
                    left: 158,
                    child: GestureDetector(
                      onTap: () => _onItemTapped(1),
                      child: Text(
                        'Kelas Saya',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: _selectedIndex == 1 ? Colors.white : Colors.white70,
                          height: 1.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                  // Notifications Icon
                  Positioned(
                    top: 6,
                    left: 292,
                    child: GestureDetector(
                      onTap: () => _onItemTapped(2),
                      child: Icon(
                        Icons.notifications,
                        color: _selectedIndex == 2 ? Colors.white : Colors.white70,
                        size: 27.944664001464844,
                      ),
                    ),
                  ),
                  // Notifications Text
                  Positioned(
                    top: 35,
                    left: 286,
                    child: GestureDetector(
                      onTap: () => _onItemTapped(2),
                      child: Text(
                        'Notifikasi',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: _selectedIndex == 2 ? Colors.white : Colors.white70,
                          height: 1.0,
                          letterSpacing: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}