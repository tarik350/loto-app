import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';

@RoutePage()
class MyTicketPage extends StatelessWidget {
  const MyTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          leading: Container(
            margin: EdgeInsets.only(top: 4.h),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          flexibleSpace: const FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            title: CustomPageAppBar(title: 'My Ticket'),
          ),
        ),
        SliverAppBar(
          pinned: true,
          leading: Container(),
          flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.zero,
            title: Container(
              margin: EdgeInsets.only(
                  left: AppDimensions.spacingS,
                  right: AppDimensions.spacingS,
                  bottom: AppDimensions.spacingS,
                  top: AppDimensions.spacingM),
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                border: const GradientBoxBorder(
                    gradient: AppColors.secondaryGradient),
              ),
              width: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimensions.radiusS),
                child: TabSelector(
                  firstTitle: 'Active',
                  secondTitle: 'Completed',
                  onTabSelected: (index) {},
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          [
            SingleChildScrollView(
              child: Column(
                  children: List.generate(10, (index) {
                return Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(
                      vertical: AppDimensions.spacingS,
                      horizontal: AppDimensions.spacingS),
                  height: 80.h,
                  decoration: BoxDecoration(
                      color: AppColors.vividViolet,
                      borderRadius:
                          BorderRadius.circular(AppDimensions.radiusS)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.paddingS),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            AppImages.icon1,
                            SizedBox(
                              width: AppDimensions.spacingS,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Asbeza',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: AppDimensions.fontL),
                                ),
                                Text("Asbeza_E01",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: AppDimensions.fontS,
                                        color: Colors.white.withOpacity(.7)))
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppDimensions.spacingM,
                              vertical: AppDimensions.spacingS),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                AppDimensions.radiusCircular),
                            color: AppColors.transparentWhite,
                          ),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Ticket price 100 ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppDimensions.fontM)),
                            TextSpan(
                                text: "ETB",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp))
                          ])),
                        )
                      ],
                    ),
                  ),
                );
              }).toList()),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ))
      ],
    ));
  }
}

class TabSelector extends StatefulWidget {
  final String firstTitle;
  final String secondTitle;
  final ValueChanged<int> onTabSelected;

  const TabSelector({
    required this.firstTitle,
    required this.secondTitle,
    required this.onTabSelected,
    Key? key,
  }) : super(key: key);

  @override
  _TabSelectorState createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTab(
          index: 0,
          title: widget.firstTitle,
          isSelected: _selectedIndex == 0,
        ),
        _buildTab(
          index: 1,
          title: widget.secondTitle,
          isSelected: _selectedIndex == 1,
        ),
      ],
    );
  }

  Widget _buildTab(
      {required int index, required String title, required bool isSelected}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
          widget.onTabSelected(_selectedIndex);
        },
        child: AnimatedContainer(
          alignment: Alignment.center,
          // padding: const EdgeInsets.symmetric(horizontal: 16.0),
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            gradient: isSelected
                ? const LinearGradient(
                    colors: [
                      AppColors.secondaryColorShade,
                      AppColors.primaryColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : const LinearGradient(
                    colors: [Colors.white, Colors.white],
                  ),
          ),
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: isSelected ? Colors.white : Colors.black,
                fontSize: AppDimensions.fontM),
          ),
        ),
      ),
    );
  }
}

class CustomPageAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onTabSelected;
  const CustomPageAppBar({super.key, required this.title, this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: AppColors.secondaryGradient,
      ),
      width: double.infinity,
      height: 100.h,
      child: Stack(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: AppDimensions.spacingM),
              alignment: Alignment.bottomCenter,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: AppDimensions.fontM),
              )),
          if (onTabSelected != null)
            Positioned(
                left: 0,
                bottom: 2,
                child: Center(
                  child: IconButton(
                      onPressed: onTabSelected,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 20,
                      )),
                ))
        ],
      ),
    );
  }
}
