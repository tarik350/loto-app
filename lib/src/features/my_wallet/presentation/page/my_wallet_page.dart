import 'package:animation_wrappers/animations/faded_slide_animation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart';
import 'package:mobile_app/src/features/my_wallet/presentation/bloc/wallet_bloc.dart';
import 'package:mobile_app/src/shared/widgets/tab_selector_button.dart';

class TransactionDto {
  final String transactionType;
  final String date;
  final String amount;

  TransactionDto(
      {required this.transactionType,
      required this.date,
      required this.amount});
}

class WalletActionDTO {
  final String title;
  final SvgPicture icon;
  final VoidCallback callback;

  WalletActionDTO(
      {required this.title, required this.icon, required this.callback});
}

List<TransactionDto> transactions = [
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "2230.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "220.00", transactionType: 'Top Up', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "450.00", transactionType: 'Top Up', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
];

@RoutePage()
class MyWalletPage extends StatelessWidget {
  const MyWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => WalletBloc(),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            leading: Container(
              margin: EdgeInsets.only(top: 4.h),
              child: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            flexibleSpace: const FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              title: CustomPageAppBar(title: 'My Wallet'),
            ),
          ),
          SliverAppBar(
            primary: false,
            snap: false,
            stretch: false,
            toolbarHeight: 80.h,
            pinned: true,
            leading: Container(),
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              title: Container(
                margin: EdgeInsets.only(
                  left: AppDimensions.spacingS,
                  right: AppDimensions.spacingS,
                  bottom: AppDimensions.spacingS,
                  top: AppDimensions.spacingXL,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                  border: const GradientBoxBorder(
                    gradient: AppColors.secondaryGradient,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7.r),
                  child: BlocSelector<WalletBloc, WalletState, int>(
                    selector: (state) => state.selectedTab,
                    builder: (context, tab) {
                      return Row(
                        children: [
                          TabSelectorButton(
                            icon: SvgPicture.asset(
                              AppImages.paymentHistoryIcon,
                              colorFilter: ColorFilter.mode(
                                tab == 0 ? Colors.white : Colors.black,
                                BlendMode.srcIn,
                              ),
                            ),
                            isSelected: tab == 0,
                            onTap: () => context
                                .read<WalletBloc>()
                                .add(const WalletEvent.selectTab(0)),
                            title: "History",
                          ),
                          TabSelectorButton(
                            icon: SvgPicture.asset(
                              AppImages.topupIcon,
                              colorFilter: ColorFilter.mode(
                                tab == 1 ? Colors.white : Colors.black,
                                BlendMode.srcIn,
                              ),
                            ),
                            isSelected: tab == 1,
                            onTap: () => context
                                .read<WalletBloc>()
                                .add(const WalletEvent.selectTab(1)),
                            title: "Top UP",
                          ),
                          TabSelectorButton(
                            icon: SvgPicture.asset(
                              AppImages.withdrawalIcon,
                              colorFilter: ColorFilter.mode(
                                tab == 2 ? Colors.white : Colors.black,
                                BlendMode.srcIn,
                              ),
                            ),
                            isSelected: tab == 2,
                            onTap: () => context
                                .read<WalletBloc>()
                                .add(const WalletEvent.selectTab(2)),
                            title: "Withdraw",
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: AppDimensions.spacingS,
                  horizontal: AppDimensions.spacingS),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Tarik,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppDimensions.fontXL),
                      ),
                      const Text(
                        "Your available balance,",
                        style: TextStyle(
                            color: AppColors.customGray,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  RichText(
                    text: TextSpan(
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: '5,938 ',
                              style:
                                  TextStyle(fontSize: AppDimensions.fontXXL)),
                          TextSpan(
                              text: 'birr',
                              style: TextStyle(fontSize: AppDimensions.fontM))
                        ]),
                  )
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              BlocSelector<WalletBloc, WalletState, int>(
                selector: (state) => state.selectedTab,
                builder: (context, tab) {
                  switch (tab) {
                    case 0:
                      return FadedSlideAnimation(
                          beginOffset: const Offset(-.5, 0),
                          endOffset: const Offset(0, 0),
                          slideCurve: Curves.linearToEaseOut,
                          child: const TransactionHistoryView());
                    case 1:
                      return FadedSlideAnimation(
                          beginOffset: const Offset(-.5, 0),
                          endOffset: const Offset(0, 0),
                          slideCurve: Curves.linearToEaseOut,
                          child: const TopUpView());
                    case 2:
                      return FadedSlideAnimation(
                          beginOffset: const Offset(-.5, 0),
                          endOffset: const Offset(0, 0),
                          slideCurve: Curves.linearToEaseOut,
                          child: const WithdrawView());
                    default:
                      return Container();
                  }
                },
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ))
        ],
      ),
    ));
  }
}

class TransactionHistoryView extends StatelessWidget {
  const TransactionHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: AppDimensions.spacingS, horizontal: AppDimensions.spacingS),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Latest Transactions",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    'see all',
                    style: TextStyle(
                        color: AppColors.foregroundGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.fontS),
                  ),
                  SizedBox(
                    width: AppDimensions.spacingS,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: AppDimensions.iconXS,
                    color: AppColors.foregroundGreen,
                  )
                ],
              ),
            )
          ],
        ),
        ...List.generate(
          transactions.length,
          (index) {
            final transaction = transactions[index];
            return Container(
              margin: EdgeInsets.only(bottom: AppDimensions.spacingM),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppDimensions.paddingXS),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: AppColors.secondaryGradient),
                        child: transaction.transactionType.toLowerCase() ==
                                'withdraw'
                            ? AppImages.withdrawFilledIcon
                            : AppImages.topupFilledIcon,
                      ),
                      SizedBox(
                        width: AppDimensions.spacingM,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(transaction.transactionType,
                              style: TextStyle(
                                fontSize: AppDimensions.fontL,
                              )),
                          Text(transaction.date)
                        ],
                      )
                    ],
                  ),
                  Text(
                    transaction.amount,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: AppDimensions.fontM),
                  )
                ],
              ),
            );
          },
        )
      ]),
    );
  }
}

class TopUpView extends StatelessWidget {
  const TopUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('top up view'),
    );
  }
}

class WithdrawView extends StatelessWidget {
  const WithdrawView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('withdraw view'),
    );
  }
}
