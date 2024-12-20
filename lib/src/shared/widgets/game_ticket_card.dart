import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket_status.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/shared/widgets/custom_circular_progress_indicator.dart';

class GameTicketCard extends StatelessWidget {
  final Ticket ticket;
  final VoidCallback callback;

  const GameTicketCard(
      {super.key, required this.ticket, required this.callback});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GameBloc, GameState, FormSubmissionStatus>(
      selector: (state) => state.ticketLockStatus,
      builder: (context, status) {
        return GestureDetector(
          onTap: callback,
          child: Container(
            height: AppDimensions.iconL,
            width: AppDimensions.iconL,
            decoration: BoxDecoration(
                color: ticket.status == TicketStatus.free
                    ? AppColors.availableColor
                    : ticket.status == TicketStatus.locked
                        ? AppColors.lockedColor
                        : AppColors.reservedColor,
                borderRadius: BorderRadius.circular(AppDimensions.radiusXS),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.5),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: const Offset(2, 2))
                ],
                border: Border.all(width: 2, color: Colors.white)),
            child: status == FormSubmissionStatus.inProgress &&
                    ticket == sl<GameBloc>().state.ticketPendingForLock
                ? CustomCircularProgressIndicator(
                    color: Colors.black,
                    size: AppDimensions.iconS,
                  )
                : Center(
                    child: Text(
                      ticket.ticketNumber.toString(),
                      style: TextStyle(
                          fontSize: AppDimensions.fontS,
                          fontWeight: FontWeight.bold,
                          color: ticket.status == TicketStatus.free
                              ? Colors.black
                              : Colors.white),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
