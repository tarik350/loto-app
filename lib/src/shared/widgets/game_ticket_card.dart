import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket_status.dart';
import 'package:mobile_app/src/shared/widgets/custom_circular_progress_indicator.dart';

class GameTicketCard extends StatelessWidget {
  final Ticket ticket;
  final bool isLoading;
  final TicketStatus ticketStatus;
  final VoidCallback callback;

  const GameTicketCard(
      {super.key,
      required this.ticket,
      required this.ticketStatus,
      required this.callback,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: AppDimensions.iconL,
        width: AppDimensions.iconL,
        decoration: BoxDecoration(
            color: ticketStatus == TicketStatus.free
                ? AppColors.availableColor
                : ticketStatus == TicketStatus.locked
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
        child: isLoading
            ? const Center(
                child: CustomCircularProgressIndicator(
                  color: Colors.black,
                  strokeWidth: 3,
                  // size: 1,
                ),
              )
            : Center(
                child: Text(
                  ticket.ticketNumber.toString(),
                  style: TextStyle(
                      fontSize: AppDimensions.fontS,
                      fontWeight: FontWeight.bold,
                      color: ticketStatus == TicketStatus.free
                          ? Colors.black
                          : Colors.white),
                ),
              ),
      ),
    );
  }
}
