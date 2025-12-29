import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../widgets/help_bottom_sheet.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height  * 0.80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

 @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class WavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFB74848)
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.6,
      size.width * 0.5,
      size.height * 0.5,
    );

    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.4,
      size.width,
      size.height * 0.6,
    );

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

   @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: 'ekfbryntikh@gmail.com');
  final _passwordController = TextEditingController(text: 'password123');
  bool _obscurePassword = true;

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 200),
        ),
      );
    }
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 286,
              child: ClipPath(
                clipper: DiagonalClipper(),
                child: Image.asset('assets/images/telkom_university.jpg', fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 225,
              left: 150,
              child: Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: const Color(0xFFB74848),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
             Positioned(
              top: 235,
              left: 168,
              child: Image.asset('assets/images/logo_telkom.png', width: 39, height: 52),
            ),
            Positioned(
              top: 312,
              left: 21,
              child: Text(
                'Login',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 416,
              left: 21,
              child: Container(
                width: 332.5,
                height: 2,
                color: const Color(0xFFB74848),
              ),
            ),
             Positioned(
              top: 381,
              left: 21,
              width: 332,
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Email',
                ),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (value != 'ekfbryntikh@gmail.com') {
                    return 'Invalid email address';
                  }
                  return null;
                },
              ),
            ),
            Positioned(
              top: 442,
              left: 21,
              width: 332,
              child: TextFormField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value != 'password123') {
                    return 'Invalid password';
                  }
                  return null;
                },
              ),
            ),
            Positioned(
              top: 440,
              left: 312,
              child: IconButton(
                icon: Icon(_obscurePassword ? Icons.visibility : Icons.visibility_off),
                onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
                iconSize: 25,
              ),
            ),
            Positioned(
              top: 480,
              left: 21,
              child: Container(
                width: 332.5,
                height: 0,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: const Color(0xFFB74848),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 547,
              left: 21,
              child: ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAF1116),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  minimumSize: const Size(332, 37),
                ),
                child: Text(
                  'Login',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 606,
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => const SizedBox(
                    height: 400,
                    child: HelpBottomSheet(),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Bantuan ?',
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFFAF1116),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 650,
              left: 0,
              right: 0,
              height: 200,
              child: CustomPaint(
                painter: WavePainter(),
                size: const Size(double.infinity, 200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
