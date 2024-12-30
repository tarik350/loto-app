import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class TabSelectorButton extends StatelessWidget {
  final bool isSelected;
  final String title;
  final VoidCallback onTap;
  final Widget? icon;
  const TabSelectorButton(
      {super.key,
      required this.isSelected,
      this.icon,
      required this.onTap,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          // alignment: Alignment.center,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            gradient: isSelected
                ? const LinearGradient(
                    colors: [
                      AppColors.secondaryColorShade,
                      AppColors.primaryColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : const LinearGradient(
                    colors: [Colors.white, Colors.white],
                  ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: AppDimensions.iconS, child: icon ?? Container()),
              icon != null
                  ? SizedBox(
                      width: AppDimensions.spacingS,
                    )
                  : const SizedBox.shrink(),
              Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: AppDimensions.fontM),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
