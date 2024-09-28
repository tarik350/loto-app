import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/config/constants/app_colors.dart';
import 'package:mobile_app/utils/dialogue/language_change_dialogue.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String, dynamic>> content = [
    {
      "title": "Pocket Money",
      "duration": "Hourly",
      "prize": "25\$",
      "cardone": "Tikcets in Draw",
      "cardtwo": "odds",
      "color": AppColors.purple
    },
    {
      "title": "Holiday Maker",
      "duration": "daily",
      "prize": "750\$",
      "cardone": "Tikcets in Draw",
      "cardtwo": "odds",
      "color": AppColors.green
    },
    {
      "title": "Life Changer",
      "duration": "weekly",
      "prize": "22,000\$",
      "cardone": "Tikcets in Draw",
      "cardtwo": "odds",
      "color": AppColors.yellow
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 70.h, right: 12.h, left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("Account"),
                    SizedBox(
                      width: 8.w,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.asset('assets/images/profileplaceholder.png',
                          width: 25.h, height: 25.h),
                    )
                  ],
                ),
                SizedBox(
                  height: 22.h,
                ),
                Text(
                  "Jackpots",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 27.sp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    final item = content[index];
                    return Container(
                      padding: EdgeInsets.all(12.h),
                      margin: EdgeInsets.symmetric(vertical: 12.h),
                      decoration: BoxDecoration(
                          color: item['color'],
                          borderRadius: BorderRadius.circular(18.r)),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['duration'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.sp),
                                  ),
                                  Text(
                                    item['title'],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 22.sp),
                                  ),
                                ],
                              ),
                              Text(
                                item['prize'],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    minHeight: 35.h,
                                    maxHeight: double
                                        .infinity, // Optional: no upper limit on height
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      item['cardone'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Expanded(
                                child: Container(
                                  constraints: BoxConstraints(
                                    minHeight: 35.h,
                                    maxHeight: double
                                        .infinity, // Optional: no upper limit on height
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      item['cardtwo'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          Container(
                            height: 35.h,
                            width: double
                                .infinity, // Parent container takes full width
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                // Use the constraints.maxWidth to get the width of the parent container
                                return Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: constraints.maxWidth * .6,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.h),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '12 numbers left',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12.sp),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
