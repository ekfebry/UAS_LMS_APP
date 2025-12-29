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
            const Offset begin = Offset(1.0, 0.0); // Slide in from right
            const Offset end = Offset.zero;
            
            final Animation<Offset> slideAnimation = Tween<Offset>(
              begin: begin,
              end: end,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut, // animation-timing-function: ease-out
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