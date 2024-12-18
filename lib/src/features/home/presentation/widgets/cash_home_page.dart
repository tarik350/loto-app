import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/home/domain/models/game/game.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/game_card.dart';
import 'package:mobile_app/src/shared/models/paginated_response/paginated_response.dart';

class CashGamesScreen extends StatelessWidget {
  const CashGamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEvent.getAllCashGames());

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
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: AppDimensions.paddingS,
            ),
            BlocSelector<HomeBloc, HomeState, FetchState>(
              selector: (state) => state.gameFetchState,
              builder: (context, fetchState) {
                if (fetchState == FetchState.loading) {
                  return const Center(
                    child: Text('loading'),
                  );
                } else if (fetchState == FetchState.error) {
                  final message = sl<HomeBloc>().state.gameErrorMessage;
                  return Center(
                    child: Text('error loading $message'),
                  );
                } else if (fetchState == FetchState.loaded) {
                  final PaginatedResponse<Game> games =
                      sl<HomeBloc>().state.games as PaginatedResponse<Game>;
                  return Column(
                    children: List.generate(games.total ?? 0, (index) {
                      final game = games.data![index];

                      return GameCard(
                        backgroundColor: AppColors.mintGreen,
                        gameName: game.name ?? "unknown",
                        winningPrice: game.category?.winningPrize ?? 0,
                        ticketPrice: game.category?.ticketPrice ?? 0,
                        soldTicketCount: game.soldTicketCount ?? 0,
                        lockedTicketsCount: game.lockedTicketsCount ?? 0,
                        freeTicketsCount: game.freeTicketsCount ?? 0,
                        totalTicketCount: game.category?.ticketCount ?? 0,
                      );
                    }).toList(),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      )
    ]));
  }
}
