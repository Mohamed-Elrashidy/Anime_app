import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/enums/movie_list_types.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/app_colors.dart';
import '../widgets/anime_overview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MovieListTypes _selectedType = MovieListTypes.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(gradient: AppColors.backGroundGradient),
          ),
          Positioned(
            top: -90.h,
            right: -140.w,
            child: SvgPicture.asset(AppAssets.bigStar),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.w),
                  child: Text(
                    'Where Anime Comes Alive',
                    style: AppTextStyles.font24W600TextPrimary.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                // Category Filter Tabs
                _buildCategoryTabs(),
                // Anime Overview Content
                const AnimeOverview(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryTabs() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Row(
        children: [
          for (MovieListTypes type in MovieListTypes.values)
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedType = type;
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 10.w),
                decoration: BoxDecoration(
                  color: _selectedType == type
                      ? AppColors.primary
                      : AppColors.background,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: _selectedType == type
                      ? [
                          BoxShadow(
                            color: AppColors.primary.withOpacity(0.3),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          )
                        ]
                      : null,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 8.h,
                ),
                child: Text(
                  type.displayName,
                  style: _selectedType == type
                      ? AppTextStyles.font14W600TextPrimary.copyWith(
                          color: AppColors.textOnPrimary,
                          fontWeight: FontWeight.bold,
                        )
                      : AppTextStyles.font14W600TextPrimary.copyWith(
                          color: AppColors.primary,
                        ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
