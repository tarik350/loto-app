import 'package:auto_route/auto_route.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/core/constants/app_images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: const BoxDecoration(
          gradient: AppColors.buttonGradient,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 44.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingM),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 20,
                              )),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 24.w),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Asea_E1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusL)),
                    height: 100.h,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppDimensions.radiusL),
                      child: Stack(
                        children: [
                          Positioned.fill(
                              child: Image.asset(
                            AppImages.grainTexture,
                            fit: BoxFit.cover,
                            color: Colors.black.withOpacity(0.12),
                            colorBlendMode: BlendMode.darken,
                          )),
                          Positioned(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    child: AppImages.gold,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: AppDimensions.fontS),
                                      children: [
                                        TextSpan(
                                          text: "100000\n",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: AppDimensions.fontM),
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: AppDimensions.fontXS),
                                          text: "BIRR",
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: 2.h,
                                margin: EdgeInsets.symmetric(vertical: 12.h),
                                color: AppColors.lightGray,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    child: AppImages.bronze,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: AppDimensions.fontS),
                                      children: [
                                        TextSpan(
                                          text: "100000\n",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: AppDimensions.fontM),
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: AppDimensions.fontXS),
                                          text: "BIRR",
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                width: 2.h,
                                margin: EdgeInsets.symmetric(vertical: 12.h),
                                color: AppColors.lightGray,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    child: AppImages.silver,
                                  ),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontSize: AppDimensions.fontS),
                                      children: [
                                        TextSpan(
                                          text: "100000\n",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: AppDimensions.fontM),
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: AppDimensions.fontXS),
                                          text: "BIRR",
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppDimensions.spacingL,
            ),
            Expanded(
                child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: AppColors.backgroundGradient,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppDimensions.radiusL),
                      topLeft: Radius.circular(AppDimensions.radiusL))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.paddingM,
                        vertical: AppDimensions.paddingM),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 32.h,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppDimensions.paddingM),
                                foregroundColor: AppColors.secondaryColor,
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                              onPressed: () {},
                              child: const Text('Random')),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ExpandableSearchField(),
                            SizedBox(
                              width: AppDimensions.paddingXS,
                            ),
                            const FilterDropdown()
                          ],
                        )
                      ],
                    ),
                  ),
                  PaginatedGrid(),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                                color: AppColors.foregroundGreen,
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusXS)),
                          ),
                          SizedBox(
                            width: AppDimensions.spacingS,
                          ),
                          Text('Available',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppDimensions.fontS,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                                color: AppColors.foregroundBlue,
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusXS)),
                          ),
                          SizedBox(
                            width: AppDimensions.spacingS,
                          ),
                          Text('Locked',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppDimensions.fontS,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20.h,
                            width: 20.h,
                            decoration: BoxDecoration(
                                color: AppColors.foregroundOrange,
                                borderRadius: BorderRadius.circular(
                                    AppDimensions.radiusXS)),
                          ),
                          SizedBox(
                            width: AppDimensions.spacingS,
                          ),
                          Text('Sold',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: AppDimensions.fontS,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: AppDimensions.paddingM,
                        horizontal: AppDimensions.paddingM),
                    height: 60.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(.3),
                        borderRadius:
                            BorderRadius.circular(AppDimensions.radiusS)),
                    child: Center(
                      child: Text(
                        'No ticket locked yet!',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: AppDimensions.fontS),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: AppDimensions.paddingXXS,
                        horizontal: AppDimensions.paddingM),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                              children: [
                                TextSpan(
                                    text: "Total Price\n",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: AppDimensions.fontM)),
                                TextSpan(
                                    text: '500 BIRR',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: AppDimensions.fontL))
                              ]),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.foregroundOrange,
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppDimensions.paddingXL),
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: AppDimensions.fontM),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100))),
                            child: const Text('Buy Ticket'))
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ExpandableSearchField extends StatefulWidget {
  const ExpandableSearchField({super.key});

  @override
  _ExpandableSearchFieldState createState() => _ExpandableSearchFieldState();
}

class _ExpandableSearchFieldState extends State<ExpandableSearchField> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 32.h,
          width: _isExpanded ? 100.w : 0,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(AppDimensions.radiusCircular),
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: AppDimensions.fontS,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppDimensions.paddingS,
                vertical: AppDimensions.paddingXS,
              ),
            ),
            style: TextStyle(fontSize: AppDimensions.fontXS),
          ),
        ),
        // Reduced unnecessary padding and constraints here
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Icon(
            _isExpanded ? Icons.close : Icons.search,
            size: AppDimensions.iconS,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class FilterDropdown extends StatefulWidget {
  const FilterDropdown({Key? key}) : super(key: key);

  @override
  _FilterDropdownState createState() => _FilterDropdownState();
}

class _FilterDropdownState extends State<FilterDropdown> {
  String? _selectedValue;
  final List<String> _options = [
    'All',
    'Locked',
    'Free',
    'Sold',
    "1-50",
    '51-100'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          menuItemStyleData: MenuItemStyleData(
            height: 30.h,
            padding: EdgeInsets.zero,
            selectedMenuItemBuilder: (context, child) {
              return Container(
                color: AppColors.tertiaryColor,
                child: child,
              );
            },
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
              color: AppColors.tertiaryColor,
            ),
            openMenuIcon: Icon(
              Icons.arrow_drop_up,
              color: AppColors.tertiaryColor,
            ),
          ),
          underline: Container(
            height: 1.h,
            color: Colors.red,
          ),
          hint: Text(
            'Filter',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: AppDimensions.fontS,
              color: AppColors.primaryColor,
            ),
          ),
          selectedItemBuilder: (BuildContext context) {
            return _options.map((String item) {
              return Text(
                item,
                style: TextStyle(
                  color: item == _selectedValue
                      ? AppColors.primaryColor
                      : Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: AppDimensions.fontS,
                ),
              );
            }).toList();
          },
          dropdownStyleData: DropdownStyleData(
            offset: const Offset(0, -5),
            padding: EdgeInsets.symmetric(horizontal: AppDimensions.paddingXS),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              color: AppColors.gradientColor,
            ),
          ),
          buttonStyleData: ButtonStyleData(
            elevation: 0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.white, width: 1)),
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
    // return SizedBox(
    //   height: 32.h,
    //   width: 100.w,
    //   child: DropdownButtonHideUnderline(
    //     child: DropdownButton2(
    //       value: _selectedValue,
    //       onChanged: (value) {
    //         setState(() {
    //           _selectedValue = value as String;
    //         });
    //       },
    //       isExpanded: true,
    //       hint: Text(
    //         'Filter',
    //         style: TextStyle(
    //           fontSize: 14,
    //           color: Theme.of(context).hintColor,
    //         ),
    //       ),
    // buttonStyleData: ButtonStyleData(
    //   elevation: 0,
    //   decoration: const BoxDecoration(
    //     color: Colors.transparent,
    //   ),

    //   overlayColor:
    //       WidgetStateProperty.all(Colors.transparent), // No hover effect
    // ),
    // dropdownStyleData: const DropdownStyleData(
    //   elevation: 0,
    //   decoration: BoxDecoration(
    //     color: Colors.white, // Dropdown background color
    //   ),
    // ),
    //       items: _options
    //           .map((item) => DropdownMenuItem<String>(
    //                 value: item,
    //                 child: Align(
    //                   alignment: Alignment.centerLeft,
    //                   child: Text(
    //                     item,
    //                     style: const TextStyle(
    //                       fontSize: 14,
    //                       color: Colors.black, // Dropdown item text color
    //                     ),
    //                   ),
    //                 ),
    //               ))
    //           .toList(),
    //       selectedItemBuilder: (context) => _options
    //           .map((item) => Text(
    //                 item,
    //                 style: const TextStyle(
    //                   color: Colors.white,
    //                 ),
    //               ))
    //           .toList(),
    //     ),
    //   ),
    // );
  }
}

class PaginatedGrid extends StatelessWidget {
  final List<String> items = List.generate(100, (index) => '$index');
  final int itemsPerPage = 63;
  final controller = PageController(keepPage: true);

  PaginatedGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Divide items into chunks (pages)
    List<List<String>> pages = [];
    for (int i = 0; i < items.length; i += itemsPerPage) {
      pages.add(items.sublist(i,
          i + itemsPerPage > items.length ? items.length : i + itemsPerPage));
    }

    return SizedBox(
      height: MediaQuery.of(context).size.height * .38,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: pages.length,
              scrollDirection: Axis.horizontal, // Ensure horizontal scrolling
              itemBuilder: (context, pageIndex) {
                return GridView.count(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppDimensions.paddingS),
                  crossAxisCount: 9,
                  mainAxisSpacing: 6.h,
                  crossAxisSpacing: 6.h,
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable vertical scrolling
                  children: pages[pageIndex].map((item) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1),
                            ),
                          ],
                          color: AppColors.foregroundGreen,
                          borderRadius:
                              BorderRadius.circular(AppDimensions.radiusS)),
                      child: Center(
                        child: Text(
                          item,
                          style: TextStyle(
                              fontSize: AppDimensions.fontS,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    );
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
      ),
    );
  }
}
