import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/game_card.dart';

class CashHomePage extends StatelessWidget {
  CashHomePage({super.key});

  final List<Map<String, dynamic>> gameCards = [
    {
      "gameName": "Asbeza",
      "winningPrice": "\$500",
      "ticketPrice": "\$5",
      "backgroundColor": Helper.getRandomColor(),
      "ticketsLeft": "20",
    },
    {
      "gameName": "Shop",
      "winningPrice": "\$1000",
      "ticketPrice": "\$10",
      "backgroundColor": Helper.getRandomColor(),
      "ticketsLeft": "15",
    },
    {
      "gameName": "Guzo",
      "winningPrice": "\$750",
      "ticketPrice": "\$7",
      "backgroundColor": Helper.getRandomColor(),
      "ticketsLeft": "30",
    },
    {
      "gameName": "Feta",
      "winningPrice": "\$300",
      "ticketPrice": "\$3",
      "backgroundColor": Helper.getRandomColor(),
      "ticketsLeft": "50",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final game = gameCards[index];
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
            ),
            child: GameCard(
                backgroundColor: game['backgroundColor'],
                gameName: game['gameName'],
                winningPrice: game['winningPrice'],
                ticketPrice: game['ticketPrice'],
                ticketsLeft: game['ticketsLeft']),
          );
        },
        childCount: gameCards.length,
      ),
    );
  }
}
