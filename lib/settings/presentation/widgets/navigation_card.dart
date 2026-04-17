import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_styles.dart';

class NavigationCard extends StatelessWidget {
  const NavigationCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconImage,
    this.navigateIcon,
    required this.circleColor,
  });

  final String title;
  final String description;
  final String iconImage;
  final Color circleColor;
  final Widget? navigateIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, left: 45.0, bottom: 2.0,),
      child: Container(
        color: AppColors.secondaryColor.withValues(alpha: .1),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundColor: circleColor,
                child: Image.asset(
                  iconImage,
                  width: 18.0,
                  height: 18.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.styleRegular21(context).copyWith(fontSize: 11.0),
                  ),
                  SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    description,
                    style: Styles.styleMedium10(
                      context,
                    ).copyWith(color: Color(0xff666363)),
                  ),
                ],
              ),
              Spacer(),
              navigateIcon ?? SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
