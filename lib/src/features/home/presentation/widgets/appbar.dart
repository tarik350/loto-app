// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mobile_app/src/core/constants/app_%20colors.dart';
// import 'package:mobile_app/src/core/constants/app_dimensions.dart';

// class HomePageAppBar extends StatelessWidget {
//   const HomePageAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverAppBar(
//       toolbarHeight: 80.h,
//       floating: false,
//       pinned: currentIndex == 1,
//       backgroundColor: AppColors.tertiaryColor,
//       flexibleSpace: FlexibleSpaceBar(
//         titlePadding: EdgeInsets.zero,
//         centerTitle: true,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () => setState(() => currentIndex = 0),
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
//                 decoration: BoxDecoration(
//                   border:
//                       Border.all(width: 1, color: AppColors.transparentWhite),
//                   borderRadius: BorderRadius.circular(AppDimensions.radiusL),
//                   color: currentIndex == 0
//                       ? AppColors.transparentWhite
//                       : Colors.transparent,
//                 ),
//                 child: Text(
//                   'Cash',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       fontSize: AppDimensions.fontS),
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 14.w),
//               height: 50.h,
//               width: 50.h,
//               child: AppImages.cardSvg,
//             ),
//             GestureDetector(
//               onTap: () => setState(() => currentIndex = 1),
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
//                 decoration: BoxDecoration(
//                     border:
//                         Border.all(width: 1, color: AppColors.transparentWhite),
//                     borderRadius: BorderRadius.circular(AppDimensions.radiusL),
//                     color: currentIndex == 1
//                         ? AppColors.transparentWhite
//                         : Colors.transparent),
//                 child: Text(
//                   'Goods',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: AppDimensions.fontS,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
