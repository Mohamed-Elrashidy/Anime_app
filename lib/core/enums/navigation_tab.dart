enum NavigationTab {
  home,
  library,
  search,
  explore,
  settings;

  String get displayName {
    switch (this) {
      case NavigationTab.home:
        return 'Home';
      case NavigationTab.library:
        return 'Library';
      case NavigationTab.search:
        return 'Search';
      case NavigationTab.explore:
        return 'Explore';
      case NavigationTab.settings:
        return 'Settings';
    }
  }
}
