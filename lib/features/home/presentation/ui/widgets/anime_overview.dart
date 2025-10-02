import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/data/sample_data.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../anime/domain/entity/anime_entity.dart';
import '../../../../anime/domain/entity/character_entity.dart';

class AnimeOverview extends StatelessWidget {
  const AnimeOverview({super.key});

  @override
  Widget build(BuildContext context) {
    final popularAnime = SampleData.getPopularAnime();
    final topCharacters = SampleData.getTopCharacters();

    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            // Popular Anime Section
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: _buildAnimeHorizontalList(popularAnime, context),
            ),
            SizedBox(height: 32.h),
            // Top Characters Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Text(
                'Top Characters',
                style: AppTextStyles.font24W700TextPrimary,
              ),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.only(left: 14.w),
              child: _buildCharactersGrid(topCharacters),
            ),
            SizedBox(height: 32.h),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimeHorizontalList(
    List<AnimeEntity> animeList,
    BuildContext context,
  ) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10.sp,
        children: [
          for (AnimeEntity anime in animeList)
            _buildAnimeCard(context, anime, animeList.indexOf(anime)),
        ],
      ),
    );
  }

  Widget _buildAnimeCard(BuildContext context, AnimeEntity anime, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
          rootNavigator: true,
        ).pushNamed(Routes.animeDetails, arguments: anime);
      },
      child: Container(
        width: 184.w,
        height: 320.h,

        child: Column(
          spacing: 5.h,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image with rating overlay
            Stack(
              children: [
                SizedBox(
                  height: 247.h,
                  width: double.infinity,

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.asset(
                      anime.logo,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColors.primary.withOpacity(0.3),
                                AppColors.secondary,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Rating overlay
                Positioned(
                  top: 12.h,
                  right: 23.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: AppColors.primary, size: 10.sp),
                        SizedBox(width: 2.w),
                        Text(
                          anime.rating.toString(),
                          style: AppTextStyles.font12W600TextPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Content
            FittedBox(
              child: Text(
                anime.title,
                style: AppTextStyles.font14W700TextPrimary,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text(
              anime.genres.displayName,
              style: AppTextStyles.font12W500TextSecondary,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            // Genre tags
          ],
        ),
      ),
    );
  }

  Widget _buildCharactersGrid(List<CharacterEntity> characters) {
    return SizedBox(
      height: 143.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 10.sp,
          children: [
            for (CharacterEntity character in characters)
              _buildCharacterCard(character, characters.indexOf(character)),
          ],
        ),
      ),
    );
  }

  Widget _buildCharacterCard(CharacterEntity character, int index) {
    return Container(
      width: 108.w,

      child: Column(
        spacing: 2.sp,
        children: [
          // Character image
          ClipOval(
            child: Image.asset(
              character.imageUrl,
              fit: BoxFit.cover,
              height: 92.sp,
              width: 92.sp,
            ),
          ),
          // Character info
          FittedBox(
            child: Text(
              character.name,
              style: AppTextStyles.font16W600TextPrimary,
              textAlign: TextAlign.center,
            ),
          ),

          FittedBox(
            child: Text(
              character.animeName,
              style: AppTextStyles.font14W600TextSecondary,
              textAlign: TextAlign.center,
            ),
          ),

          // Hugs count with badge
        ],
      ),
    );
  }

  Color _getCharacterGradientColor(int index) {
    final colors = [Colors.orange, Colors.blue, Colors.purple];
    return colors[index % colors.length];
  }
}
