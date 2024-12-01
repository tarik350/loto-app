import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/authentication_bottom_sheet/presentation/pages/authentication_bottom_sheet_page.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';
import 'package:mobile_app/src/features/home/presentation/widgets/game_card.dart';
import 'package:mobile_app/src/shared/widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingS),
          child: RefreshIndicator(
            onRefresh: () async {
              sl<HomeBloc>().add(const GetAllGamesWithCategoryEvent());
            },
            child: Column(
              children: [
                CustomElevatedButton(
                    onPressed: () =>
                        AuthenticationBottomSheetPage.show(context),
                    child: const Text('open')),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverFillRemaining(
                        child: BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return state.when(
                              () => const SizedBox(),
                              loading: () => const Center(
                                child: Text('loading'),
                              ),
                              loaded: (categories) => GameCategoryList(
                                categories: categories,
                              ),
                              error: (message) => Center(
                                child: Text(message),
                              ),
                              // error: (message) => CustomErrorWidget(
                              //   message: message,
                              //   onRetry: () {
                              //     sl<HomeBloc>()
                              //         .add(const GetAllGamesWithCategoryEvent());
                              //   },
                              // ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GameCategoryList extends StatelessWidget {
  final List<GameCategory> categories;

  const GameCategoryList({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return GameCategoryCard(category: category);
      },
    );
  }
}

class GameCategoryCard extends StatelessWidget {
  final GameCategory category;

  const GameCategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 255.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${category.titleAm} Games',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: AppDimensions.fontL),
          ),
          category.gamesCount == 0
              ? Expanded(
                  child: Center(
                      child: Text(
                          'no game for this category ${category.titleEn}')))
              : Expanded(
                  child: ListView.builder(
                      itemCount: category.games?.length,
                      itemBuilder: (context, index) {
                        final game = category.games![index];
                        return GameCard(
                          backgroundColor: AppColors.mintGreen,
                          ticketPrice: category.ticketPrice.toString(),
                          ticketsLeft: category.ticketCount.toString(),
                          gameName: game.name ?? "",
                          winningPrice: category.winningPrize.toString(),
                        );
                      }),
                ),
        ],
      ),
    );
  }
}
