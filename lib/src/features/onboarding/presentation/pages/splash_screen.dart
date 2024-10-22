// ignore_for_file: prefer_int_literals

import 'dart:async';

import 'package:edumake_frontend/l10n/l10n.dart';
import 'package:edumake_frontend/src/core/extentions/context_extention.dart';
import 'package:edumake_frontend/src/features/onboarding/presentation/pages/onboarding_screen.dart';
import 'package:edumake_frontend/streams/general_stream.dart';
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
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.5, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.decelerate),
    );
    _controller.forward();

    // Navigate to another screen after the splash screen
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder<void>(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const OnboardingScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset(
            'assets/png/app_logo.png',
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

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({required this.locale, super.key});
  final Locale locale;

  static const routeName = 'button-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Button Screen'),
        ),
        body: Column(
          children: [
            Text('Current Locale: ${locale.languageCode}'),
            Text(context.localizations.language),
            ElevatedButton(
              onPressed: () {
                GeneralStream.generalStream.add(L10n.locals.firstWhere(
                    (element) => element.languageCode != locale.languageCode));
              },
              child: Text(context.localizations.changeLanguage),
            ),
            Text(context.localizations.welcomeToEDUMAKE),
          ],
        ));
  }
}
