import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/utils/helper/helper.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart';
import 'package:mobile_app/src/features/home/presentation/bloc/home_bloc.dart';

class HomePageFilterAppBar extends StatelessWidget {
  const HomePageFilterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(const HomeEvent.getAllGameCateories());

    return SliverAppBar(
      toolbarHeight: 80.h,
      shape: ContinuousRectangleBorder(
        side: const BorderSide(color: AppColors.primaryColor),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppDimensions.radiusL),
          bottomRight: Radius.circular(AppDimensions.radiusL),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: AppDimensions.spacingS),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: BlocSelector<HomeBloc, HomeState, FetchState>(
                  selector: (state) => state.categoryFetchState,
                  builder: (context, state) {
                    if (state == FetchState.loaded) {
                      final List<GameCategory> categories =
                          sl<HomeBloc>().state.categories as List<GameCategory>;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(categories.length, (index) {
                          final category = categories[index];
                          return GestureDetector(
                            onTap: () {
                              context.read<HomeBloc>().add(
                                  HomeEvent.updateCategoryId(
                                      categoryId: category.id));
                              context.read<HomeBloc>().add(
                                  HomeEvent.getAllCashGames(
                                      categoryId: category.id));
                            },
                            child: BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) {
                                return Transform.scale(
                                  scale: sl<HomeBloc>().state.categoryId ==
                                          category.id
                                      ? 1.2
                                      : 1,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: AppDimensions.spacingS,
                                        horizontal: AppDimensions.spacingS),
                                    width: 60.w,
                                    height: 70.h,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black
                                              .withOpacity(0.2), // Shadow color
                                          offset: const Offset(
                                              0, 6), // Only vertical offset
                                          blurRadius: 0, // Blur effect
                                          spreadRadius: 0, // No spread
                                        ),
                                      ],
                                      color: category.bgColor != null
                                          ? Helper.decimalToColor(
                                              category.bgColor!)
                                          : AppColors.backgroundBlue,
                                      borderRadius: BorderRadius.circular(
                                          AppDimensions.radiusM),
                                      border: Border.all(
                                          width: 5, color: Colors.white),
                                    ),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: FractionallySizedBox(
                                        heightFactor: 0.9,
                                        widthFactor: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      AppDimensions.radiusS)),
                                              color: category.fgColor != null
                                                  ? Helper.decimalToColor(
                                                      category.fgColor!)
                                                  : AppColors.foregroundBlue),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 30.h,
                                                width: 30.h,
                                                child: AppImages.icon1,
                                              ),
                                              Text(
                                                category.titleAm.toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize:
                                                        AppDimensions.fontXS),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          );
                        }),
                      );
                    } else if (state == FetchState.loading) {
                      return const Center(
                        child: Text('loading'),
                      );
                    } else if (state == FetchState.error) {
                      return const Center(
                        child: Text('error fetching game categories'),
                      );
                    } else if (state == FetchState.initial) {
                      return const Center(
                        child: Text('initial'),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
