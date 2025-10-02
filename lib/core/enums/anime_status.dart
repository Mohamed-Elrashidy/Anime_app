enum AnimeStatus {
  airing,
  finished,
  notYetAired,
  cancelled,
  hiatus;

  String get displayName {
    switch (this) {
      case AnimeStatus.airing:
        return 'Currently Airing';
      case AnimeStatus.finished:
        return 'Finished Airing';
      case AnimeStatus.notYetAired:
        return 'Not Yet Aired';
      case AnimeStatus.cancelled:
        return 'Cancelled';
      case AnimeStatus.hiatus:
        return 'On Hiatus';
    }
  }
}
