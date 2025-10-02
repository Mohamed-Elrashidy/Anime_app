import '../../features/anime/domain/entity/anime_entity.dart';
import '../../features/anime/domain/entity/character_entity.dart';
import '../enums/anime_genre.dart';
import '../enums/anime_status.dart';
import '../enums/character_role.dart';

class SampleData {
  static List<AnimeEntity> getPopularAnime() {
    return [
      AnimeEntity(
        id: 1,
        title: 'Detective Conan',
        description:
            'NEW DETECTIVE CONAN: THE GRAY EYED FLASHBACK. MOVIE MAIN VISUAL REVEAL THE MOVIE IS SLATED TO RELEASE ON APRIL 13 2025.',
        logo: 'assets/png_images/conan_cover.png',
        bannerImageUrl: 'assets/png_images/conan_cover.png',
        rating: 5.0,
        totalViews: 2300000,
        totalClaps: 2000,
        seasons: 4,
        genres: AnimeGenre.mystery,
        status: AnimeStatus.airing,
        releaseYear: '2024',
        studio: 'TMS Entertainment',
        director: 'Kobun Shizuno',
        type: 'Movie',
      ),
      AnimeEntity(
        id: 2,
        title: 'Hunter x Hunter',
        description:
            'A young boy named Gon Freecss discovers that his father, who he was told was dead, is actually alive and a legendary Hunter.',
        logo: 'assets/png_images/hunter_cover.png',
        bannerImageUrl: 'assets/png_images/hunter_cover.png',
        rating: 5.0,
        totalViews: 1800000,
        totalClaps: 1500,
        seasons: 6,
        genres: AnimeGenre.adventure,
        status: AnimeStatus.finished,
        releaseYear: '2011',
        studio: 'Madhouse',
        director: 'Hiroshi Kōjina',
        type: 'Series',
      ),
      AnimeEntity(
        id: 3,
        title: 'Demon Slayer: Kimetsu no Yaiba',
        description:
            'Demon Slayer: Kimetsu no Yaiba follows Tanjiro Kamado, a kind-hearted and intelligent boy whose family is slaughtered by demons.',
        logo: 'assets/png_images/demon_slayer_logo.png',
        bannerImageUrl: 'assets/png_images/demon_slayer_logo.png',
        rating: 4.8,
        totalViews: 2300000,
        totalClaps: 2000,
        seasons: 4,
        genres: AnimeGenre.darkFantasy,
        status: AnimeStatus.airing,
        releaseYear: '2019',
        studio: 'Ufotable',
        director: 'Haruo Sotozaki',
        type: 'Series',
      ),
    ];
  }

  static List<CharacterEntity> getTopCharacters() {
    return [
      CharacterEntity(
        id: 1,
        name: 'Gon Freecss',
        imageUrl: 'assets/png_images/gon.png',
        animeName: 'Hunter x Hunter',
        hugs: 908,
        role: CharacterRole.main,
      ),
      CharacterEntity(
        id: 2,
        name: 'Naruto Uzumaki',
        imageUrl: 'assets/png_images/narouto.png',
        animeName: 'Naruto',
        hugs: 608,
        role: CharacterRole.main,
      ),
      CharacterEntity(
        id: 3,
        name: 'Luffy',
        imageUrl: 'assets/png_images/monkey d lofy.png',
        animeName: 'One Piece',
        hugs: 501,
        role: CharacterRole.main,
      ),
    ];
  }
}
