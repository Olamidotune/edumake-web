import 'package:edumake_frontend/src/core/constants/app_colors.dart';
import 'package:edumake_frontend/src/core/extensions/num_extention.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/home_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/payment_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/settings_screen.dart';
import 'package:edumake_frontend/src/features/dashboard/presentation/pages/tabs/ward_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  static const String routeName = 'dashboard';

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;
    controller = PersistentTabController();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, Object? result) async {
        if (didPop) {
          return;
        }
        final shouldPop = await _showExitDialog(context) ?? false;
        if (context.mounted && shouldPop) {
          Navigator.of(context).pop();
        }
      },
      child: PersistentTabView(
        bottomScreenMargin: 70.height,
        context,
        screens: _buidScreens(),
        controller: controller,
        items: _navBarsItems(),
        resizeToAvoidBottomInset: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(60),
          colorBehindNavBar: AppColors.whiteColor,
          boxShadow: [
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
      ),
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
  const activeColorPrimary = AppColors.whiteColor;
  const inactiveColorPrimary = Colors.grey;
  return [
    PersistentBottomNavBarItem(
      inactiveIcon: SvgPicture.asset(
        'assets/svg/home.svg',
        color: inactiveColorPrimary,
      ),
      icon: SvgPicture.asset(
        'assets/svg/home_active.svg',
      ),
      title: 'Home',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset('assets/svg/ward_active.svg'),
      inactiveIcon: SvgPicture.asset(
        'assets/svg/ward.svg',
        color: inactiveColorPrimary,
      ),
      title: 'Ward',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset('assets/svg/payment_active.svg'),
      inactiveIcon: SvgPicture.asset(
        'assets/svg/payment.svg',
        color: inactiveColorPrimary,
      ),
      title: 'Payment',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
    PersistentBottomNavBarItem(
      icon: SvgPicture.asset('assets/svg/settings_active.svg'),
      inactiveIcon: SvgPicture.asset(
        'assets/svg/settings.svg',
        color: inactiveColorPrimary,
      ),
      title: 'Settings',
      activeColorPrimary: activeColorPrimary,
      inactiveColorPrimary: inactiveColorPrimary,
    ),
  ];
}

Future<bool?> _showExitDialog(BuildContext context) async {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(
          'Are you sure you want to exit?',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'HelveticaNeueRounded',
                fontSize: 12.fontSize,
                fontWeight: FontWeight.w400,
                color: AppColors.primaryTextColor,
              ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(
              'No',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 12.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greenColor,
                  ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(
              'Yes',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'HelveticaNeueRounded',
                    fontSize: 12.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.redColor,
                  ),
            ),
          ),
        ],
      );
    },
  );
}
