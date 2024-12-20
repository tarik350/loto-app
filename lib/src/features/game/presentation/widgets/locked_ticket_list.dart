import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/shared/widgets/game_ticket_card.dart';

class LockedTicketList extends StatelessWidget {
  const LockedTicketList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimensions.paddingS),
      margin: EdgeInsets.only(
          top: AppDimensions.paddingM,
          left: AppDimensions.paddingS,
          right: AppDimensions.paddingS),
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.secondaryColor.withOpacity(.5),
          borderRadius: BorderRadius.circular(AppDimensions.radiusS)),
      child: BlocBuilder<GameBloc, GameState>(
        buildWhen: (previous, current) =>
            previous.lockedTickets != current.lockedTickets ||
            previous.ticketFetchState != current.ticketFetchState,
        builder: (context, state) {
          final lockedTickets = state.lockedTickets;
          final ticketFetchState = state.ticketFetchState;

          if (ticketFetchState == FetchState.loading) {
            return const Center(child: Text('Loading...'));
          }

          if (lockedTickets.isNotEmpty) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(lockedTickets.length, (index) {
                final ticket = lockedTickets[index];
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppDimensions.spacingXS),
                  child: GameTicketCard(
                      ticket: ticket,
                      callback: () => context
                          .read<GameBloc>()
                          .add(GameEvent.unlockTicket(ticket))),
                );
              }),
            );
          }
          return Center(
            child: Text(
              'ምንም ቲኬታ ገና አልመረጡም!',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: AppDimensions.fontS),
            ),
          );
        },
      ),
    );
  }
}
