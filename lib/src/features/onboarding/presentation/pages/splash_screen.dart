import 'dart:async';
import 'package:edumake_frontend/src/features/authentication/presentation/pages/sign_in/sign_in.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/src/shared/services/persistence_services.dart';
import 'package:edumake_frontend/src/shared/services/shared_preferences.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const routeName = 'splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: .1, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.bounceOut),
    );
    await _controller.forward();

    final hasAuthenticatedBefore =
        await PersistenceServices().getHasAuthenticatedBefore();

    Timer(const Duration(microseconds: 1), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder<void>(
          pageBuilder: (context, animation, secondaryAnimation) {
            return hasAuthenticatedBefore
                ? const OnboardingScreen()
                : const OnboardingScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    });

    await UserRoleHelper.getUserRole();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            'assets/png/logo.png',
            height: 250,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
