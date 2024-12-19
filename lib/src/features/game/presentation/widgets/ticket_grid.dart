import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/widgets/tab_scale_animation_wrapper.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket_status.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/features/ticket_history/presentation/bloc/ticket_history_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaginatedGrid extends StatefulWidget {
  const PaginatedGrid({
    Key? key,
  }) : super(key: key);

  @override
  State<PaginatedGrid> createState() => _PaginatedGridState();
}

class _PaginatedGridState extends State<PaginatedGrid> {
  // final List<String> items = List.generate(100, (index) => '$index');

  final int itemsPerPage = 63;

  final controller = PageController(keepPage: true);

  List<List<Ticket>> pages = [];

  @override
  Widget build(BuildContext context) {
    // Divide items into chunks (pages)

    return Column(
      children: [
        Expanded(
          child: BlocBuilder<GameBloc, GameState>(
            builder: (context, state) {
              switch (state) {
                case TicketLoaded(:final tickets):
                  for (int i = 0; i < tickets.length; i += itemsPerPage) {
                    pages.add(tickets.sublist(
                        i,
                        i + itemsPerPage > tickets.length
                            ? tickets.length
                            : i + itemsPerPage));
                  }

                  return PageView.builder(
                    controller: controller,
                    itemCount: pages.length,
                    scrollDirection:
                        Axis.horizontal, // Ensure horizontal scrolling
                    itemBuilder: (context, pageIndex) {
                      return BlocBuilder<GameBloc, GameState>(
                        builder: (context, state) {
                          return GridView.count(
                            padding: EdgeInsets.symmetric(
                                horizontal: AppDimensions.paddingS),
                            crossAxisCount: 9,
                            mainAxisSpacing: 6.h,
                            crossAxisSpacing: 6.h,
                            physics: const NeverScrollableScrollPhysics(),
                            children: pages[pageIndex].map((item) {
                              return ScaleOnTapAnimationWrapper(
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: const Offset(0, 1),
                                        ),
                                      ],
                                      color: item.status == TicketStatus.locked
                                          ? AppColors.lockedColor
                                          : item.status == TicketStatus.free
                                              ? AppColors.availableColor
                                              : AppColors.reservedColor,
                                      borderRadius: BorderRadius.circular(
                                          AppDimensions.radiusS)),
                                  child: Center(
                                    child: Text(
                                      item.ticketNumber.toString(),
                                      style: TextStyle(
                                          fontSize: AppDimensions.fontS,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              item.status == TicketStatus.free
                                                  ? Colors.black
                                                  : Colors.white),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          );
                        },
                      );
                    },
                  );

                case TicketLoading():
                  return const Center(
                    child: Text('loaidng'),
                  );
                case ErrorTicketLoading(:final message):
                  return Center(
                    child: Text(message),
                  );
                default:
                  return const Center(
                    child: Text('unknown state'),
                  );
              }
            },
          ),
        ),
        BlocBuilder<GameBloc, GameState>(
          builder: (context, state) {
            return SmoothPageIndicator(
                controller: controller,
                count: pages.length,
                effect: ExpandingDotsEffect(
                  radius: 5,
                  spacing: 10,
                  dotHeight: 10.h,
                  dotWidth: 10.w,
                  activeDotColor: Colors.white,
                  dotColor: Colors.black.withOpacity(.2),
                ));
          },
        ),
      ],
    );
  }
}
