import 'package:app/core/constants/app_assets.dart';
import 'package:app/core/enums/movie_list_types.dart';
import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  MovieListTypes _selectedType = MovieListTypes.All;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(gradient: AppColors.backGroundGradient),
          ),
          Positioned(
            top: -90,
            right: -140,
            child: SvgPicture.asset(AppAssets.bigStar),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    'Where Anime Comes Alive',
                    style: AppTextStyles.font24W700TextPrimary,
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      Container(),
                      for (MovieListTypes type in MovieListTypes.values)
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  _selectedType == type
                                      ? AppColors.primary
                                      : AppColors.background,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            child: Text(
                              type.name,
                              style:
                                  _selectedType == type
                                      ? AppTextStyles.font14W700TextOnPrimary
                                      : AppTextStyles.font14W700TextPrimary
                                          .copyWith(color: AppColors.primary),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
