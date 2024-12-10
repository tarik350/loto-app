import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/game_card.dart';

class CashGamesScreen extends StatelessWidget {
  CashGamesScreen({super.key});

  final List<Map<String, dynamic>> gameCards = [
    {
      "gameName": "Asbeza",
      "winningPrice": "500",
      "ticketPrice": "5",
      "backgroundColor": Helper.getRandomColor(),
      "ticketsLeft": "20",
    },
    {
      "gameName": "Shop",
      "winningPrice": "1000",
      "ticketPrice": "10",
      "backgroundColor": Helper.getRandomColor(),
      "ticketsLeft": "15",
    },
    {
      "gameName": "Guzo",
      "winningPrice": "750",
      "ticketPrice": "7",
      "backgroundColor": Helper.getRandomColor(),
      "ticketsLeft": "30",
    },
    {
      "gameName": "Feta",
      "winningPrice": "300",
      "ticketPrice": "3",
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
        padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingXS,
            vertical: AppDimensions.paddingS),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 80.h, viewportFraction: 1, autoPlay: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.sizeOf(context).width,
                      height: double.maxFinite,
                      margin: EdgeInsets.symmetric(
                          horizontal: AppDimensions.spacingXS),
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppImages.carouselBanner,
                            )),
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusL),
                      ),
                      // child: Center(child: Text('text $i')),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: AppDimensions.paddingS,
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
