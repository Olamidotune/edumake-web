
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/home_screem.dart';
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
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.// Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10),
        colorBehindNavBar: Colors.transparent,
      ),
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: Colors.grey.shade900,

      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 003),
          curve: Curves.decelerate,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.slide,
        ),
      ),

      navBarStyle: NavBarStyle.style12,
      // Choose the nav bar style with this property
    );
  }
}

List<Widget> _buidScreens() {
  return [
    const HomeScreen(),
    const WardScreen(),
    const PaymentScreen(),
    const SettingsScreen(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      title: 'Home',
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.people),
      title: 'Ward',
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.payment),
      title: 'Payment',
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      title: 'Settings',
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.grey,
    ),
  ];
}
