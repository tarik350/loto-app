import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/utils/helper/fetch_state.dart';
import 'package:mobile_app/src/core/widgets/game_button1.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket/ticket.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';
import 'package:mobile_app/src/shared/widgets/custome_dialogue.dart';
import 'package:mobile_app/src/shared/widgets/game_ticket_card.dart';
import 'package:mobile_app/src/shared/widgets/slide_in_toast.dart';

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
      child: BlocConsumer<GameBloc, GameState>(
        listenWhen: (previous, current) =>
            previous.ticketUnlockState != current.ticketUnlockState,
        listener: (context, state) {
          if (state.ticketUnlockState.formSubmissionStatus ==
              FormSubmissionStatus.failure) {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
            ToastManager.show(
                context: context,
                message: state.errorMessage ??
                    "Error while trying to release lock on ticket ${state.ticketUnlockState.ticket?.ticketNumber}");
          }
          if (state.ticketUnlockState.formSubmissionStatus ==
              FormSubmissionStatus.success) {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
            ToastManager.show(
                context: context,
                icon: Icon(
                  Icons.check_circle,
                  color: AppColors.strongGreen,
                  size: AppDimensions.iconL,
                ),
                message:
                    "Ticket lock on ${state.ticketUnlockState.ticket?.ticketNumber} was successfully released.");
            context.read<GameBloc>().add(const GameEvent.fetchTickets());
          }
        },
        builder: (context, state) {
          final lockedTickets = state.lockedTickets;
          final lockedTicketFetch = state.lockedTicketFetchState;
          switch (lockedTicketFetch) {
            case FetchState.loading:
              return const Center(child: Text('Loading...'));
            case FetchState.loaded:
              if (lockedTickets.isNotEmpty) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(lockedTickets.length, (index) {
                      final ticket = lockedTickets[index];
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppDimensions.spacingXS),
                        child: GameTicketCard(
                          backgroundColor: AppColors.lockedColor,
                          foregroundColor: Colors.white,
                          ticket: ticket,
                          callback: () {
                            _showReleaseLockDialog(context, ticket);
                          },
                          ticketStatus: ticket.status,
                        ),
                      );
                    }),
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    'No ticket selected yet!',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: AppDimensions.fontS),
                  ),
                );
              }
            case FetchState.error:
              return Expanded(
                child: Center(
                  child: Text(
                    'Error while trying to fetch locked Ticket.',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: AppDimensions.fontS),
                  ),
                ),
              );
            default:
              return Expanded(
                child: Center(
                  child: Text(
                    'Unknown state',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: AppDimensions.fontS),
                  ),
                ),
              );
          }
        },
      ),
    );
  }

  void _showReleaseLockDialog(BuildContext context, Ticket ticket) {
    DialogManager.showCustomDialog(
      context,
      CustomDialog(
        title: "Release Lock for Ticket",
        actions: [
          Expanded(
            child: BlocSelector<GameBloc, GameState, TicketUnlockState>(
              selector: (state) => state.ticketUnlockState,
              builder: (context, state) {
                return GameButton1(
                  width: double.maxFinite,
                  height: AppDimensions.buttonL,
                  bgGradientTopColor: AppColors.lightSkyBlue,
                  bgGradientBottomColor: AppColors.darkBlueShade,
                  borderGradientTopColor: AppColors.lightSkyBlue.withAlpha(10),
                  borderGradientBottomColor: AppColors.lightSkyBlue,
                  shadowColor: AppColors.darkBlueShade,
                  title: 'Release',
                  isLoading: state.formSubmissionStatus ==
                      FormSubmissionStatus.inProgress,
                  onPressed: () {
                    context
                        .read<GameBloc>()
                        .add(GameEvent.unlockTicket(ticket));
                  },
                );
              },
            ),
          ),
          SizedBox(
            width: AppDimensions.spacingM,
          ),
          Expanded(
            child: GameButton1(
              width: double.maxFinite,
              height: AppDimensions.buttonL,
              bgGradientTopColor: AppColors.lightPink,
              bgGradientBottomColor: AppColors.darkPink,
              borderGradientTopColor: AppColors.lightPink.withAlpha(100),
              borderGradientBottomColor: AppColors.darkCrimson.withOpacity(.5),
              shadowColor: AppColors.darkCrimson,
              title: 'cancel',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
        child: Text(
          "Are you sure you want to release lock for ticket number ${ticket.ticketNumber}",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: AppDimensions.fontM,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
