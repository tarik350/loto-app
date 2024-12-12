import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart';

List<ProfileCardContentDto> cards = [
  ProfileCardContentDto(
      icon: AppImages.userIcon, title: 'Your Profile', onAction: (context) {}),
  ProfileCardContentDto(
      icon: AppImages.myOrderIcon, title: "My Orders", onAction: (context) {}),
  ProfileCardContentDto(
      icon: AppImages.creditCardIcon,
      title: "My Wallet",
      onAction: (context) {}),
  ProfileCardContentDto(
      icon: AppImages.notificationBlackIcon,
      title: "Notifications",
      onAction: (context) {}),
  ProfileCardContentDto(
      icon: AppImages.privacyIcon,
      title: "Privacy Policy",
      onAction: (context) {}),
  ProfileCardContentDto(
      icon: AppImages.creditCardIcon,
      title: "Help Center",
      onAction: (context) {}),
  ProfileCardContentDto(
      icon: AppImages.inviteFreindsIcon,
      title: "Invite Freinds",
      onAction: (context) {}),
];

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                title: CustomPageAppBar(title: 'Profile')),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: AppDimensions.spacingS,
                  ),
                  ...List.generate(cards.length, (index) {
                    final card = cards[index];
                    return Container(
                      width: double.maxFinite,
                      // padding: EdgeInsets.symmetric(
                      //     vertical: AppDimensions.spacingXS),
                      margin: EdgeInsets.symmetric(
                          vertical: AppDimensions.spacingS,
                          horizontal: AppDimensions.spacingL),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: .5, color: Colors.grey.shade400))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              card.icon,
                              SizedBox(
                                width: AppDimensions.spacingM,
                              ),
                              Text(card.title)
                            ],
                          ),
                          IconButton(
                              onPressed: () {
                                card.onAction(context);
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey.shade700,
                                size: 20,
                              ))
                        ],
                      ),
                    );
                  }).toList(),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppDimensions.spacingS,
                        horizontal: AppDimensions.spacingL),
                    child: Row(
                      children: [
                        AppImages.logoutIcon,
                        SizedBox(
                          width: AppDimensions.spacingS,
                        ),
                        const Text(
                          "Log Out",
                          style: TextStyle(color: AppColors.strongRed),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}

class ProfileCardContentDto {
  final String title;
  final SvgPicture icon;
  final void Function(BuildContext context) onAction;
  const ProfileCardContentDto(
      {required this.icon, required this.title, required this.onAction});
}
