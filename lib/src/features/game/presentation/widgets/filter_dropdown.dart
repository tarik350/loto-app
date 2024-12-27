import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/features/game/domain/model/ticket_filter_type_enum.dart';
import 'package:mobile_app/src/features/game/presentation/bloc/game_bloc.dart';

class FilterDropdown extends StatelessWidget {
  const FilterDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      buildWhen: (previous, current) =>
          previous.ticketFilterType != current.ticketFilterType ||
          previous.selectedFilterType != current.selectedFilterType,
      builder: (context, state) {
        return SizedBox(
          height: 32.h,
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<TicketFilterType>(
              menuItemStyleData: MenuItemStyleData(
                height: 30.h,
                padding: EdgeInsets.zero,
                selectedMenuItemBuilder: (context, child) {
                  return Container(
                    child: child,
                  );
                },
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                openMenuIcon: Icon(
                  Icons.arrow_drop_up,
                  color: Colors.white,
                ),
              ),
              underline: Container(
                height: 1.h,
                color: Colors.red,
              ),
              hint: Text(
                'ማጣራያ',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: AppDimensions.fontS,
                    color: Colors.white),
              ),
              selectedItemBuilder: (BuildContext context) {
                return state.ticketFilterType.map((TicketFilterType item) {
                  return Text(
                    item.label,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: AppDimensions.fontS,
                    ),
                  );
                }).toList();
              },
              dropdownStyleData: DropdownStyleData(
                padding: EdgeInsets.only(left: AppDimensions.spacingXS),
                decoration:
                    const BoxDecoration(color: AppColors.secondaryColor),
              ),
              buttonStyleData: const ButtonStyleData(
                elevation: 0,
                // width: 70.w,

                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              isDense: true,
              items: state.ticketFilterType
                  .map((e) => DropdownMenuItem(
                      value: e,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        e.label,
                        style: const TextStyle(color: Colors.white),
                      )))
                  .toList(),
              value: state.selectedFilterType,
              onChanged: (value) {
                context.read<GameBloc>().add(GameEvent.updateSelectedFilterType(
                    filterType: value as TicketFilterType));
                context.read<GameBloc>().add(const GameEvent.filterTicket());
              },
            ),
          ),
        );
      },
    );
  }
}
