import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart';

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
      amount: "2230.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "220.00", transactionType: 'Top Up', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "450.00", transactionType: 'Top Up', date: 'Monday 12 , 2024'),
  TransactionDto(
      amount: "20.00", transactionType: 'Withdraw', date: 'Monday 12 , 2024'),
];

List<WalletActionDTO> actions = [
  WalletActionDTO(
      title: 'Withdraw', icon: AppImages.withdrawalIcon, callback: () {}),
  WalletActionDTO(title: 'Top Up', icon: AppImages.topupIcon, callback: () {}),
  WalletActionDTO(
      title: 'History', icon: AppImages.historyIcon, callback: () {})
];

@RoutePage()
class MyWalletPage extends StatelessWidget {
  const MyWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CustomPageAppBar(
          title: 'Payment',
          onTabSelected: () {
            Navigator.pop(context);
          },
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.paddingS,
                vertical: AppDimensions.paddingS),
            child: Column(
              children: [
                Row(
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
                Container(
                  padding: EdgeInsets.all(AppDimensions.paddingXS),
                  margin: EdgeInsets.only(top: AppDimensions.paddingM),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                    gradient: AppColors.secondaryGradient,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          AppImages.withdrawalIcon,
                          SizedBox(
                            height: AppDimensions.spacingXXS,
                          ),
                          Text(
                            'Withdraw',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: AppDimensions.fontS),
                          )
                        ],
                      ),
                      fadedSeprater(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppImages.topupIcon,
                          SizedBox(
                            height: AppDimensions.spacingXXS,
                          ),
                          Text(
                            'Top UP',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: AppDimensions.fontS),
                          )
                        ],
                      ),
                      fadedSeprater(),
                      Column(
                        children: [
                          AppImages.paymentHistoryIcon,
                          SizedBox(
                            height: AppDimensions.spacingXXS,
                          ),
                          Text(
                            'History',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: AppDimensions.fontS),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: AppDimensions.paddingM),
                  child: Row(
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
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: transactions.length,
                    itemBuilder: (context, index) {
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
                                  padding:
                                      EdgeInsets.all(AppDimensions.paddingXS),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: AppColors.secondaryGradient),
                                  child: transaction.transactionType
                                              .toLowerCase() ==
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

Widget fadedSeprater() {
  return ShaderMask(
    shaderCallback: (Rect bounds) {
      return const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.transparent, Colors.white, Colors.transparent],
        stops: [0.0, 0.5, 1.0],
      ).createShader(bounds);
    },
    blendMode: BlendMode.dstIn,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.circular(AppDimensions.appBarHeight),
      ),
      height: 40.h,
      width: 2.w,
    ),
  );
}
