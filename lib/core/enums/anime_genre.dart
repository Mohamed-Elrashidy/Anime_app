enum AnimeGenre {
  action,
  adventure,
  comedy,
  drama,
  fantasy,
  horror,
  mystery,
  romance,
  sciFi,
  slice,
  sports,
  supernatural,
  thriller,
  military,
  school,
  music,
  historical,
  mecha,
  demons,
  vampire,
  samurai,
  martialArts,
  superPower,
  magic,
  shounen,
  shoujo,
  seinen,
  josei,
  kids,
  darkFantasy;

  String get displayName {
    switch (this) {
      case AnimeGenre.action:
        return 'Action';
      case AnimeGenre.adventure:
        return 'Adventure';
      case AnimeGenre.comedy:
        return 'Comedy';
      case AnimeGenre.drama:
        return 'Drama';
      case AnimeGenre.fantasy:
        return 'Fantasy';
      case AnimeGenre.horror:
        return 'Horror';
      case AnimeGenre.mystery:
        return 'Mystery';
      case AnimeGenre.romance:
        return 'Romance';
      case AnimeGenre.sciFi:
        return 'Sci-Fi';
      case AnimeGenre.slice:
        return 'Slice of Life';
      case AnimeGenre.sports:
        return 'Sports';
      case AnimeGenre.supernatural:
        return 'Supernatural';
      case AnimeGenre.thriller:
        return 'Thriller';
      case AnimeGenre.military:
        return 'Military';
      case AnimeGenre.school:
        return 'School';
      case AnimeGenre.music:
        return 'Music';
      case AnimeGenre.historical:
        return 'Historical';
      case AnimeGenre.mecha:
        return 'Mecha';
      case AnimeGenre.demons:
        return 'Demons';
      case AnimeGenre.vampire:
        return 'Vampire';
      case AnimeGenre.samurai:
        return 'Samurai';
      case AnimeGenre.martialArts:
        return 'Martial Arts';
      case AnimeGenre.superPower:
        return 'Super Power';
      case AnimeGenre.magic:
        return 'Magic';
      case AnimeGenre.shounen:
        return 'Shounen';
      case AnimeGenre.shoujo:
        return 'Shoujo';
      case AnimeGenre.seinen:
        return 'Seinen';
      case AnimeGenre.josei:
        return 'Josei';
      case AnimeGenre.kids:
        return 'Kids';
      case AnimeGenre.darkFantasy:
        return 'Dark Fantasy';
    }
  }
}
