import '../../../../core/enums/anime_genre.dart';
import '../../../../core/enums/anime_status.dart';

class AnimeEntity {
  final int id;
  final String title;
  final String description;
  final String logo;
  final String bannerImageUrl;
  final double rating;
  final int totalViews;
  final int totalClaps;
  final int seasons;
  final AnimeGenre genres;
  final AnimeStatus status;
  final String releaseYear;
  final String studio;
  final String director;
  final String type; // Movie, Series, OVA, etc.

  const AnimeEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.logo,
    required this.bannerImageUrl,
    required this.rating,
    required this.totalViews,
    required this.totalClaps,
    required this.seasons,
    required this.genres,
    required this.status,
    required this.releaseYear,
    required this.studio,
    required this.director,
    required this.type,
  });
}
