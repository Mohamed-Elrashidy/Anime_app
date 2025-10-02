import 'package:flutter/material.dart';

import '../../features/anime/domain/entity/anime_entity.dart';
import '../../features/anime/presentation/ui/pages/anime_details_page.dart';
import '../../features/navigation_bar/presentation/ui/pages/navigation_page.dart';
import '../../features/subscription/presentation/ui/pages/subscription_page.dart';
import 'routes.dart';

class Routing {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.subscription:
        return MaterialPageRoute(builder: (_) => const SubscriptionPage());
      case Routes.animeDetails:
        final anime = settings.arguments as AnimeEntity;
        return MaterialPageRoute(
          builder: (_) => AnimeDetailsPage(anime: anime),
        );
      default:
        return MaterialPageRoute(builder: (_) => const NavigationPage());
    }
  }
}
