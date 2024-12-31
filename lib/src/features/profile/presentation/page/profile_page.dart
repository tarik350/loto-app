import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/app_cubit.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/constants/storage_keys/storage_keys.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/login/data/data_source/local/abstract_local_login_api.dart';
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart';
import 'package:mobile_app/src/shared/widgets/slide_in_toast.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return ValueListenableBuilder(valueListenable: valueListenable, builder:(context, value, child) => ,)
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: Hive.box(StorageKeys.authBoxKey)
              .listenable(keys: [StorageKeys.isAuthenticatedKey]),
          builder: (context, value, child) {
            final isAuthenticated =
                sl<AbstractLocalLoginApi>().isUserAuthenticated();
            List<ProfileCardContentDto> cards = [
              ProfileCardContentDto(
                  icon: AppImages.userIcon,
                  isVisible: isAuthenticated,
                  title: 'Your Profile',
                  onAction: (context) =>
                      context.router.push(const EditProfileRoute())),
              ProfileCardContentDto(
                  icon: AppImages.myOrderIcon,
                  title: "My Tickets",
                  isVisible: isAuthenticated,
                  onAction: (context) {
                    context.router.push(const MyTicketRoute());
                  }),
              ProfileCardContentDto(
                  icon: AppImages.creditCardIcon,
                  title: "My Wallet",
                  isVisible: isAuthenticated,
                  onAction: (context) {
                    context.router.push(const MyWalletRoute());
                  }),
              ProfileCardContentDto(
                  icon: AppImages.notificationBlackIcon,
                  title: "Notifications",
                  isVisible: isAuthenticated,
                  onAction: (context) {}),
              ProfileCardContentDto(
                  icon: AppImages.privacyIcon,
                  title: "Privacy Policy",
                  isVisible: true,
                  onAction: (context) {}),
              ProfileCardContentDto(
                  icon: AppImages.helpIcon,
                  title: "Help Center",
                  isVisible: true,
                  onAction: (context) =>
                      context.router.push(const HelpCenterRoute())),
              ProfileCardContentDto(
                  icon: AppImages.inviteFreindsIcon,
                  title: "Invite Freinds",
                  isVisible: true,
                  onAction: (context) {}),
            ];

            return CustomScrollView(
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
                          return Visibility(
                            visible: card.isVisible,
                            child: GestureDetector(
                              onTap: () => card.onAction(context),
                              child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                    vertical: AppDimensions.paddingXS),
                                margin: EdgeInsets.symmetric(
                                    vertical: AppDimensions.spacingS,
                                    horizontal: AppDimensions.spacingL),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: .5,
                                            color: Colors.grey.shade400))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        card.icon,
                                        SizedBox(
                                          width: AppDimensions.spacingM,
                                        ),
                                        Text(card.title)
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.grey.shade700,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                        if (sl<AbstractLocalLoginApi>().isUserAuthenticated())
                          GestureDetector(
                            onTap: () {
                              sl<AbstractLocalLoginApi>().logoutUser();
                              ToastManager.show(
                                  context: context,
                                  message: "Logout successfully");
                              context.read<AppCubit>().switchTab(0);
                            },
                            child: Container(
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
                                    style:
                                        TextStyle(color: AppColors.strongRed),
                                  )
                                ],
                              ),
                            ),
                          )
                      ],
                    ),
                  )
                ]))
              ],
            );
          }),
    );
  }
}

class ProfileCardContentDto {
  final String title;
  final SvgPicture icon;
  final bool isVisible;
  final void Function(BuildContext context) onAction;

  const ProfileCardContentDto(
      {required this.icon,
      required this.isVisible,
      required this.title,
      required this.onAction});
}
