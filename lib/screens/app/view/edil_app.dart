import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/config/constants/app_colors.dart';
import 'package:mobile_app/screens/home/home_screen.dart';
import 'package:mobile_app/utils/dialogue/language_change_dialogue.dart';

@RoutePage()
class EdilAppScreen extends StatefulWidget {
  const EdilAppScreen({super.key});

  @override
  State<EdilAppScreen> createState() => _EdilAppScreenState();
}

class _EdilAppScreenState extends State<EdilAppScreen> {
  List<Map<String, dynamic>> icons = [
    {"icon": Icons.home, "title": "home"},
    {"icon": Icons.queue, "title": "ticket"},
    {"icon": Icons.settings, "title": "settings"}
  ];

  int _currentIndex = 0;
  final List<Widget> _widgets = [
    HomeScreen(),
    const Scaffold(
      body: Center(
        child: Text('tickets'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('setting'),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: _widgets[_currentIndex]),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.all(12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.black
                    .withOpacity(0.6), // Set opacity for transparency
              ),
              // height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(icons.length, (index) {
                  return IconButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      icon: Column(
                        children: [
                          Icon(
                            icons[index]['icon'],
                            color: index == _currentIndex
                                ? AppColors.yellow
                                : Colors.white,
                            size: 25.h,
                          ),
                          Text(
                            icons[index]['title'],
                            style: TextStyle(
                                color: index == _currentIndex
                                    ? AppColors.yellow
                                    : Colors.white,
                                fontWeight: index == _currentIndex
                                    ? FontWeight.bold
                                    : FontWeight.w400),
                          ).tr()
                        ],
                      ));
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
