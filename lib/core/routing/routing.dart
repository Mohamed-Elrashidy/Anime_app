import 'package:flutter/material.dart';

import '../../features/navigation_bar/presentation/ui/pages/navigation_page.dart';

class Routing {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (_) => NavigationPage());
    }
  }
}
