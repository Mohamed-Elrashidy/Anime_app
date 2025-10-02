import 'package:app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/entity/anime_entity.dart';

class AnimeDetailsPage extends StatelessWidget {
  final AnimeEntity anime;

  const AnimeDetailsPage({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.animeDetailsBackground,
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                anime.bannerImageUrl,
                height: 600.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 120.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    width: 120.w,
                    child: Text(
                      anime.genres.displayName,
                      style: AppTextStyles.font12W500TextSecondary.copyWith(
                        color: AppColors.textOnPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(width: 1.sw - 40.w, height: 1.sp, color: Colors.grey),
              SizedBox(height: 20.sp),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    textIcon(Icons.visibility, '${anime.totalViews} views'),
                    textIcon(
                      Icons.waving_hand_outlined,
                      ' ${anime.totalClaps} clap',
                    ),
                    textIcon(
                      Icons.slow_motion_video,
                      ' ${anime.seasons} seasons',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(width: 1.sw - 40.w, height: 1.sp, color: Colors.grey),
            ],
          ),
          Positioned(
            top: 500.h,
            left: 120.w,
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    anime.logo,
                    height: 193.sp,
                    width: 193.sp,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 1.sw,
              height: 90.h,
              color: AppColors.selectedColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconButton(
                    Icon(
                      Icons.play_circle_fill_outlined,
                      size: 22.sp,
                      color: Colors.white,
                    ),
                    'preview',
                    AppColors.secondary,
                  ),
                  _buildIconButton(
                    Icon(Icons.visibility, size: 22.sp, color: Colors.white),
                    'Watch Now',
                    AppColors.primary,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(Icon icon, String label, Color color) {
    return Container(
      width: 150.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 5.w),
          Text(label, style: AppTextStyles.font14W700TextOnPrimary),
        ],
      ),
    );
  }

  Widget textIcon(IconData icon, String label) {
    return Row(
      children: [
        Icon(icon, size: 18.sp, color: Colors.white),
        SizedBox(width: 5.w),
        Text(label, style: AppTextStyles.font14W700TextOnPrimary),
      ],
    );
  }
}
