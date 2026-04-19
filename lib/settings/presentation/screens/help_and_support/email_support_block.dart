import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_images.dart';
import 'package:pastport/core/utils/app_strings.dart';
import 'package:pastport/core/utils/app_styles.dart';

class EmailSupportBlock extends StatelessWidget {
  const EmailSupportBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffCBD3E5).withValues(alpha: .40),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 16.r,
              backgroundColor: Color(0xffCBD3E5).withValues(alpha: .4),
              child: Image.asset(
                Assets.emailIcon,
                width: 18.0,
                height: 18.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.emailSupportText,
                    style: Styles.styleMedium16(
                      context,
                    ).copyWith(fontSize: 12.0, color: AppColors.blackColor),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    AppStrings.sendUsEmailText,
                    style: Styles.styleFaqMedium10(
                      context,
                    ).copyWith(fontSize: 10.0, overflow: TextOverflow.ellipsis),
                  ),
                  Text(
                    AppStrings.mailText,
                    style: Styles.styleFaqMedium10(
                      context,
                    ).copyWith(fontSize: 10.0, overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, color: AppColors.secondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
