import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart';

class HelpCenterContentDto {
  final String title;
  final Widget icon;

  HelpCenterContentDto({required this.title, required this.icon});
}

List<HelpCenterContentDto> contents = [
  HelpCenterContentDto(title: 'Website', icon: AppImages.websiteIcon),
  HelpCenterContentDto(title: 'Whatsapp', icon: AppImages.whatsappIcon),
  HelpCenterContentDto(title: 'Facebook', icon: AppImages.facebookIcon),
  HelpCenterContentDto(title: 'Instagram', icon: AppImages.instagramIcon),
  HelpCenterContentDto(title: 'Twitter', icon: AppImages.twitterIcon)
];

@RoutePage()
class HelpCenterPage extends StatelessWidget {
  const HelpCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomPageAppBar(
            title: 'Help Center',
            onTabSelected: () => Navigator.pop(context),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: AppDimensions.spacingL,
                horizontal: AppDimensions.spacingL),
            child: Column(
              children: [
                ...List.generate(contents.length, (index) {
                  final item = contents[index];
                  return Container(
                    margin:
                        EdgeInsets.symmetric(vertical: AppDimensions.spacingS),
                    padding: EdgeInsets.all(AppDimensions.paddingS),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300),
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusS)),
                    child: Row(
                      children: [
                        item.icon,
                        SizedBox(
                          width: AppDimensions.spacingL,
                        ),
                        Text(item.title)
                      ],
                    ),
                  );
                }).toList()
              ],
            ),
          )
        ],
      ),
    );
  }
}
