import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/widgets/custom_text_field.dart';

List<String> genders = ['male', 'female'];

@RoutePage()
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior:
                Clip.none, // Ensure the Positioned widget can overflow
            children: [
              Container(
                height: 200.h,
                decoration: const BoxDecoration(
                  gradient: AppColors.secondaryGradient,
                ),
              ),
              Positioned(
                  top: 50.h,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppDimensions.spacingS),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  )),
              Positioned(
                  top: 50.h,
                  right: 0,
                  left: 0,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: AppDimensions.fontM),
                      ))),
              Positioned(
                bottom:
                    -40, // Allows the circle to overflow the AppBar's bounds
                left: 0,
                right: 0,
                child: Container(
                  height: 90.h,
                  width: 90.h,
                  padding: EdgeInsets.all(AppDimensions.spacingXS),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Container(
                    height: 90.h,
                    width: 90.h,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.2),
                        shape: BoxShape.circle),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppDimensions.paddingXXL,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppDimensions.paddingS,
                  vertical: AppDimensions.paddingS),
              child: Column(
                children: [
                  const CustomTextField(
                    fieldKey: 'edit_profile_full_name',
                    title: "Full Name",
                  ),
                  SizedBox(
                    height: AppDimensions.spacingS,
                  ),
                  const CustomTextField(
                    fieldKey: 'edit_profile_email',
                    title: "Email Address",
                  ),
                  SizedBox(
                    height: AppDimensions.spacingS,
                  ),
                  CustomTextField(
                    fieldKey: 'edit_profile_email',
                    title: "Date of Birth",
                    suffixIcon: GestureDetector(
                        onTap: () {
                          showDatePicker(
                              context: context,
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now());
                        },
                        child: const Icon(Icons.calendar_month)),
                  ),
                  SizedBox(
                    height: AppDimensions.spacingS,
                  ),
                  CustomTextField(
                    readOnly: true,
                    prefixIcon: Container(
                      padding: EdgeInsets.zero,
                      width: double.maxFinite,
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                        items: genders
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: 'male',
                        dropdownStyleData:
                            const DropdownStyleData(offset: Offset(0, -4)),
                        onChanged: (String? value) {},
                      )),
                    ),
                    fieldKey: 'edit_profile_gender',
                    title: "Gen",
                  ),
                  SizedBox(
                    height: AppDimensions.spacingS,
                  ),
                  CustomTextField(
                    fieldKey: 'edit_profile_phone_field',
                    title: 'Phone Number',
                    keyboardType: TextInputType.number,
                    prefixIcon: Container(
                      margin: EdgeInsets.only(right: AppDimensions.paddingXXS),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppDimensions.radiusM),
                          bottomRight: Radius.circular(AppDimensions.radiusM),
                        ),
                        border: const Border(
                          right:
                              BorderSide(width: 2, color: AppColors.lightGray),
                        ),
                      ),
                      width: 70.w,
                      alignment: Alignment.center,
                      child: Text(
                        "+251",
                        style: TextStyle(
                          fontSize: AppDimensions.fontM,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: AppDimensions.spacingL),
                    width: double.infinity,
                    height: AppDimensions.buttonL,
                    decoration: BoxDecoration(
                        gradient: AppColors.secondaryGradient,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusS)),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: const RoundedRectangleBorder(),
                      ),
                      child: Text(
                        'Update',
                        style: TextStyle(
                            color: Colors.white, fontSize: AppDimensions.fontM),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
