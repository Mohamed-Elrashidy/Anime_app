import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/enums/subscription_plan.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class SubscriptionPage extends StatefulWidget {
  const SubscriptionPage({super.key});

  @override
  State<SubscriptionPage> createState() => _SubscriptionPageState();
}

class _SubscriptionPageState extends State<SubscriptionPage>
    with TickerProviderStateMixin {
  SubscriptionPlan selectedPlan = SubscriptionPlan.monthly;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColors.backGroundGradient),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: -97.h,
                left: -140.w,
                child: SvgPicture.asset(AppAssets.bigStar),
              ),
              Positioned(
                top: 120.h,
                right: -200.w,
                child: Transform.rotate(
                  angle: 3.14 / 4,

                  child: SvgPicture.asset(AppAssets.bigStar),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: 20.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 40),
                        Text(
                          'Upgrade Plan',
                          style: AppTextStyles.font22W700TextPrimary,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            width: 27.w,
                            height: 27.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              size: 20,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 25.h),

                    Icon(
                      Icons.play_circle_fill_rounded,
                      color: AppColors.primary,
                      size: 207.sp,
                    ),

                    SizedBox(height: 5.h),

                    Text(
                      'Seamless Anime\nExperience, Ad-Free.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font24W700TextPrimary,
                    ),

                    SizedBox(height: 8.h),

                    Text(
                      'Enjoy unlimited anime streaming without\ninterruptions.',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font16W400TextPrimary.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),

                    SizedBox(height: 39.h),

                    _buildPlanOption(
                      SubscriptionPlan.monthly,
                      selectedPlan == SubscriptionPlan.monthly,
                    ),
                    SizedBox(height: 16.h),
                    _buildPlanOption(
                      SubscriptionPlan.annually,
                      selectedPlan == SubscriptionPlan.annually,
                    ),

                    SizedBox(height: 50.h),

                    // Continue button
                    Container(
                      width: double.infinity,
                      height: 46.h,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Center(
                          child: Text(
                            'Continue',
                            style: AppTextStyles.font18W600TextPrimary.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanOption(SubscriptionPlan plan, bool isSelected) {
    final bool isMonthly = plan == SubscriptionPlan.monthly;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPlan = plan;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.selectedColor : Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 22.sp,
          children: [
            Expanded(
              child: Row(
                spacing: 22.sp,
                children: [
                  Container(
                    width: 56.w,
                    height: 56.w,
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? Colors.white.withOpacity(0.2)
                              : AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Icon(
                      isMonthly ? Icons.calendar_month : Icons.calendar_today,
                      color: isSelected ? Colors.white : AppColors.primary,
                      size: 28,
                    ),
                  ),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plan.getDisplayName(),
                          style:
                              isSelected
                                  ? AppTextStyles.font16W600TextPrimary
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      )
                                  : AppTextStyles.font16W600TextPrimary
                                      .copyWith(fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 6.h),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: plan.getPrice(),
                                style:
                                    isSelected
                                        ? AppTextStyles.font16W600TextPrimary
                                            .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            )
                                        : AppTextStyles.font16W600TextPrimary
                                            .copyWith(
                                              fontWeight: FontWeight.w700,
                                            ),
                              ),
                              TextSpan(
                                text: ' ${plan.getPeriod()}',
                                style: AppTextStyles.font12W600TextPrimary
                                    .copyWith(
                                      color: Color(0xFFA49AD8),
                                      fontWeight: FontWeight.w700,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          'Include Family Sharing',
                          style: AppTextStyles.font12W600TextPrimary.copyWith(
                            color: Color(0xFFA49AD8),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Selection indicator
            Container(
              width: 24.sp,
              height: 24.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? AppColors.primary : Colors.transparent,
                border: Border.all(
                  color: isSelected ? Colors.transparent : AppColors.primary,
                  width: 2,
                ),
              ),
              child:
                  isSelected
                      ? const Icon(Icons.check, size: 18, color: Colors.black)
                      : null,
            ),
          ],
        ),
      ),
    );
  }
}
