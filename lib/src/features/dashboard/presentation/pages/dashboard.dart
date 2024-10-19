import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/settings_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/ward_screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  static const String routeName = 'dashboard';

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController();
    return PersistentTabView(
      context,
      screens: _buidScreens(),
      controller: controller,
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(60),
        colorBehindNavBar: Colors.white,
        boxShadow:  [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.9),
            blurRadius: 4,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 10,
      ),
  
      backgroundColor: AppColors.primaryColor,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(
            milliseconds: 003,
          ),
          curve: Curves.decelerate,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),
      navBarStyle: NavBarStyle.style12,
    );
  }
}

List<Widget> _buidScreens() {
  return [
    HomeScreen(),
    const WardScreen(),
    const PaymentScreen(),
    const SettingsScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  const activeColorPrimary = AppColors.whiteColor;
  const inactiveColorPrimary = Colors.grey;
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: 'Home',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.people),
      title: 'Ward',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.payment),
      title: 'Payment',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      title: 'Settings',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
  ];
}
