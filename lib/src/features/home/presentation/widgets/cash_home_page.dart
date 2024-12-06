import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/game_card.dart';

class CashGamesScreen extends StatelessWidget {
  CashGamesScreen({super.key});

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
  //we are going to

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Padding(
        padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingXS),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppDimensions.spacingS,
            ),
            Row(
              children: [
                Icon(
                  Icons.list,
                  size: AppDimensions.iconL,
                ),
                Text(
                  'All Cash Games',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimensions.fontL),
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.spacingXS,
            ),
            ...List.generate(gameCards.length, (index) {
              final game = gameCards[index];

              return GameCard(
                  backgroundColor: game['backgroundColor'],
                  gameName: game['gameName'],
                  winningPrice: game['winningPrice'],
                  ticketPrice: game['ticketPrice'],
                  ticketsLeft: game['ticketsLeft']);
            }).toList()
          ],
        ),
      )
    ]));
  }
}
