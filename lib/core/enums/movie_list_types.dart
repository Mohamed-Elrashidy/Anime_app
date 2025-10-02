enum MovieListTypes {
  all,
  popular,
  trending,
  newReleases,
  topRated,
  upcoming;

  String get displayName {
    switch (this) {
      case MovieListTypes.all:
        return 'All';
      case MovieListTypes.popular:
        return 'Popular';
      case MovieListTypes.trending:
        return 'Trending';
      case MovieListTypes.newReleases:
        return 'New Releases';
      case MovieListTypes.topRated:
        return 'Top Rated';
      case MovieListTypes.upcoming:
        return 'Upcoming';
    }
  }
}
