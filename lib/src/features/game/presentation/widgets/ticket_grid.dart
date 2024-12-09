import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';
import 'package:mobile_app/src/features/game/presentation/page/game_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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

    return Column(
      children: [
        Builder(builder: (context) {
          return Expanded(
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
                  physics: const NeverScrollableScrollPhysics(),
                  children: pages[pageIndex].map((item) {
                    return ScaleOnTap(
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 1),
                              ),
                            ],
                            color: AppColors.lockedColor,
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
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          );
        }),
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
  }
}
