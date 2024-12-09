import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class FilterDropdown extends StatefulWidget {
  const FilterDropdown({Key? key}) : super(key: key);

  @override
  _FilterDropdownState createState() => _FilterDropdownState();
}

class _FilterDropdownState extends State<FilterDropdown> {
  String? _selectedValue;
  final List<String> _options = [
    'ሁልም',
    'የተቆለፉ',
    'ያልተያዙ',
    'የተሸጡ',
    "1-50",
    '51-100'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      // width: 50.w,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          menuItemStyleData: MenuItemStyleData(
            height: 30.h,
            padding: EdgeInsets.zero,
            selectedMenuItemBuilder: (context, child) {
              return Container(
                // color: AppColors.primaryColor,
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
            return _options.map((String item) {
              return Text(
                item,
                style: TextStyle(
                  color: Colors.white,
                  // color: item == _selectedValue
                  //     ? AppColors.secondaryColor
                  //     : Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: AppDimensions.fontS,
                ),
              );
            }).toList();
          },
          dropdownStyleData: DropdownStyleData(
            // width: 55.w,
            // offset: const Offset(0, -5),
            padding: EdgeInsets.only(left: AppDimensions.spacingXS),
            decoration: const BoxDecoration(color: AppColors.secondaryColor),
          ),
          buttonStyleData: const ButtonStyleData(
            elevation: 0,
            // width: 70.w,

            decoration: BoxDecoration(
              // color: Colors.white,

              color: Colors.transparent,

              // borderRadius: BorderRadius.circular(100),
              // border: Border.all(color: Colors.white, width: 1)
            ),
            // No hover effect
          ),
          isDense: true,
          items: _options
              .map((e) => DropdownMenuItem(
                  value: e,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    e,
                    style: const TextStyle(color: Colors.white),
                  )))
              .toList(),
          value: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value as String;
            });
          },
        ),
      ),
    );
  }
}
