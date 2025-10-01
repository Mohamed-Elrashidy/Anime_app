import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../home/presentation/ui/pages/home_page.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  late PersistentTabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [HomePage(), Container(), Container(), Container(), Container()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home, color: AppColors.textOnPrimary),
        inactiveIcon: Icon(Icons.home, color: AppColors.textPrimary),
        title: ("Home"),
        activeColorSecondary: AppColors.textOnPrimary,
        inactiveColorSecondary: AppColors.error,
        textStyle: AppTextStyles.font14W600TextOnPrimary,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.background,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings, color: AppColors.textOnPrimary),
        inactiveIcon: Icon(
          CupertinoIcons.settings,
          color: AppColors.textPrimary,
        ),
        title: ("Settings"),
        activeColorSecondary: AppColors.textOnPrimary,
        inactiveColorSecondary: AppColors.textPrimary,
        textStyle: AppTextStyles.font14W600TextOnPrimary,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.background,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings, color: AppColors.textOnPrimary),
        inactiveIcon: Icon(
          CupertinoIcons.settings,
          color: AppColors.textPrimary,
        ),
        title: ("Settings"),
        activeColorSecondary: AppColors.textOnPrimary,
        inactiveColorSecondary: AppColors.textPrimary,
        textStyle: AppTextStyles.font14W600TextOnPrimary,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.background,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings, color: AppColors.textOnPrimary),
        inactiveIcon: Icon(
          CupertinoIcons.settings,
          color: AppColors.textPrimary,
        ),
        title: ("Settings"),
        activeColorSecondary: AppColors.textOnPrimary,
        inactiveColorSecondary: AppColors.textPrimary,
        textStyle: AppTextStyles.font14W600TextOnPrimary,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.background,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings, color: AppColors.textOnPrimary),
        inactiveIcon: Icon(
          CupertinoIcons.settings,
          color: AppColors.textPrimary,
        ),
        title: ("Settings"),
        activeColorSecondary: AppColors.textOnPrimary,
        inactiveColorSecondary: AppColors.textPrimary,
        textStyle: AppTextStyles.font14W600TextOnPrimary,
        activeColorPrimary: AppColors.primary,
        inactiveColorPrimary: AppColors.background,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.

      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      padding: const EdgeInsets.only(top: 8),
      backgroundColor: AppColors.background,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property
    );
  }
}
