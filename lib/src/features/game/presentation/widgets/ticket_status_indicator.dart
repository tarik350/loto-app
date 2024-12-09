import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class TicketStatusColorIndicatorWidget extends StatelessWidget {
  TicketStatusColorIndicatorWidget({super.key});

  final List<Map<String, dynamic>> items = [
    {"color": AppColors.availableColor, "title": "የሚገኙ"},
    {"color": AppColors.lockedColor, "title": "የተቆለፉ"},
    {"color": AppColors.reservedColor, "title": "የተሸጡ"},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          return Row(
            children: [
              Container(
                height: 20.h,
                width: 20.h,
                decoration: BoxDecoration(
                    color: item['color'],
                    borderRadius:
                        BorderRadius.circular(AppDimensions.radiusXS)),
              ),
              SizedBox(
                width: AppDimensions.spacingS,
              ),
              Text(item['title'],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: AppDimensions.fontS,
                      fontWeight: FontWeight.bold))
            ],
          );
        }).toList());
  }
}
