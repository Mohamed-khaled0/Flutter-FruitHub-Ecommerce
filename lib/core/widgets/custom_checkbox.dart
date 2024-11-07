import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox(
      {super.key, required this.isChecked, required this.onChecked});
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: AnimatedContainer(
          width: 24,
          height: 24,
          duration: const Duration(milliseconds: 100),
          decoration: ShapeDecoration(
            color: isChecked ? AppColors.primaryColor : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1.50,
                color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: isChecked
              ? Padding(
                  padding: const EdgeInsets.all(2),
                  child: SvgPicture.asset(
                    Assets.imagesCheck,
                  ),
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}