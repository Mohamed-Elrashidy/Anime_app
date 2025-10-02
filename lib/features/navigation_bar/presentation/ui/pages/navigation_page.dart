import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../home/presentation/ui/pages/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  late PersistentTabController _controller;
  Timer? _subscriptionTimer;
  bool _hasShownSubscriptionDialog = false;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _startSubscriptionTimer();
  }

  void _startSubscriptionTimer() {
    _subscriptionTimer = Timer(const Duration(seconds: 10), () {
      if (mounted && !_hasShownSubscriptionDialog) {
        _showSubscriptionPage();
      }
    });
  }

  void _showSubscriptionPage() {
    if (!_hasShownSubscriptionDialog) {
      _hasShownSubscriptionDialog = true;
      Navigator.of(context).pushNamed(Routes.subscription);
    }
  }

  @override
  void dispose() {
    _subscriptionTimer?.cancel();
    super.dispose();
  }

  List<Widget> _buildScreens() {
    return const [HomePage(), Scaffold(), Scaffold(), Scaffold(), Scaffold()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      // Home Tab
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home, color: Colors.white),
        inactiveIcon: Icon(Icons.home, color: AppColors.textSecondary),

        activeColorPrimary: AppColors.primary,
        title: 'Home',
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
      // Library Tab
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shelves, color: Colors.white),
        inactiveIcon: Icon(Icons.shelves, color: AppColors.textSecondary),
        title: 'Library',
        activeColorPrimary: AppColors.primary,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
      // Search Tab
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search, color: Colors.white),
        inactiveIcon: Icon(Icons.search, color: AppColors.textSecondary),
        title: 'Search',
        activeColorPrimary: AppColors.primary,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: AppColors.textSecondary,
      ),
      // Explore Tab
      PersistentBottomNavBarItem(
        icon: Icon(Icons.explore, color: Colors.white),
        inactiveIcon: Icon(Icons.explore, color: AppColors.textSecondary),
        title: 'Explore',
        activeColorPrimary: AppColors.primary,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: AppColors.textSecondary,
      ),

      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings, color: Colors.white),
        inactiveIcon: Icon(Icons.settings, color: AppColors.textSecondary),
        title: 'Settings',
        activeColorPrimary: AppColors.primary,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: AppColors.textSecondary,
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
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      padding: EdgeInsets.only(top: 8.h),
      backgroundColor: AppColors.background,
      isVisible: true,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: 70.h,
      navBarStyle: NavBarStyle.style7,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
        colorBehindNavBar: AppColors.background,
        boxShadow: [
          BoxShadow(
            color: AppColors.textSecondary.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
    );
  }
}
