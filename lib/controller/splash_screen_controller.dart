import 'package:flutter/material.dart';

import '../screens/lauching_page.dart';

class SplashScreenController extends ChangeNotifier {
  Future<void> loadImage() async {
    await Future.delayed(const Duration(
        seconds: 2)); // Delay for 2 seconds Delay to load Image widget
  }
  bool _showSignUpForm = false;

  bool get showSignUpForm => _showSignUpForm;

  void toggleForm() {
    _showSignUpForm = !_showSignUpForm;
    notifyListeners();
  }

  Future<void> changePage(BuildContext context) async {
    await Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const LauchingPage(),
            transitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      },
    );
  }
}
