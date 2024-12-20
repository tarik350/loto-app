import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/core/widgets/tab_scale_animation_wrapper.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket_status.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/shared/widgets/game_ticket_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GameTicketsGrid extends StatelessWidget {
  static const int itemsPerPage = 63;
  final PageController controller = PageController(keepPage: true);
  GameTicketsGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocSelector<GameBloc, GameState, FetchState>(
            selector: (state) => state.ticketFetchState,
            builder: (context, fetchState) {
              switch (fetchState) {
                case FetchState.loaded:
                  final tickets = sl<GameBloc>().state.tickets;
                  final pages = [
                    for (int i = 0; i < tickets.length; i += itemsPerPage)
                      tickets.sublist(
                        i,
                        i + itemsPerPage > tickets.length
                            ? tickets.length
                            : i + itemsPerPage,
                      )
                  ];

                  return Column(
                    children: [
                      Expanded(
                        child: PageView.builder(
                          controller: controller,
                          itemCount: pages.length,
                          scrollDirection:
                              Axis.horizontal, // Ensure horizontal scrolling
                          itemBuilder: (context, pageIndex) {
                            return GridView.count(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppDimensions.paddingS),
                              crossAxisCount: 9,
                              mainAxisSpacing: 6.h,
                              crossAxisSpacing: 6.h,
                              physics: const NeverScrollableScrollPhysics(),
                              children: pages[pageIndex].map((ticket) {
                                return ScaleOnTapAnimationWrapper(
                                    child: GameTicketCard(
                                  ticket: ticket,
                                  callback: () {
                                    context
                                        .read<GameBloc>()
                                        .add(GameEvent.lockTicket(ticket));
                                  },
                                ));
                              }).toList(),
                            );
                          },
                        ),
                      ),
                      SmoothPageIndicator(
                          controller: controller,
                          count: pages.length,
                          effect: ExpandingDotsEffect(
                            radius: 5,
                            spacing: 10,
                            dotHeight: 10.h,
                            dotWidth: 10.w,
                            activeDotColor: Colors.white,
                            dotColor: Colors.black.withOpacity(.2),
                          )),
                    ],
                  );

                case FetchState.loading:
                  return const Center(
                    child: Text('loaidng'),
                  );
                case FetchState.error:
                  return Center(
                    child: Text(sl<GameBloc>().state.errorMessage ??
                        "Error while trying to fetch game tickets please refresh"),
                  );
                default:
                  return const Center(
                    child: Text('unknown state'),
                  );
              }
            },
          ),
        ),
      ],
    );
  }
}
