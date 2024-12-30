///previous tab selector
///   // Container(
//   padding: EdgeInsets.all(AppDimensions.paddingXS),
//   margin: EdgeInsets.only(top: AppDimensions.paddingM),
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(AppDimensions.radiusS),
//     gradient: AppColors.secondaryGradient,
//   ),
//   child: Row(

//     mainAxisAlignment: MainAxisAlignment.spaceAround,
//     children: [
//       Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SvgPicture.asset(AppImages.topupIcon,
//               colorFilter: const ColorFilter.mode(
//                   Colors.white, BlendMode.srcIn)),
//           SizedBox(
//             height: AppDimensions.spacingXXS,
//           ),
//           Text(
//             'Top UP',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: AppDimensions.fontS),
//           )
//         ],
//       ),
//       fadedSeprater(),
//       Column(
//         children: [
// SvgPicture.asset(
//   AppImages.withdrawalIcon,
//   colorFilter: ColorFilter.mode(
//       Colors.white.withOpacity(.6), BlendMode.srcIn),
// ),
//           SizedBox(
//             height: AppDimensions.spacingXXS,
//           ),
//           Text(
//             'Withdraw',
//             style: TextStyle(
//                 color: Colors.white.withOpacity(.6),
//                 fontWeight: FontWeight.bold,
//                 fontSize: AppDimensions.fontS),
//           )
//         ],
//       ),
//       fadedSeprater(),
//       Column(
//         children: [
// SvgPicture.asset(AppImages.paymentHistoryIcon,
//     colorFilter: ColorFilter.mode(
//         Colors.white.withOpacity(.6),
//         BlendMode.srcIn)),
//           SizedBox(
//             height: AppDimensions.spacingXXS,
//           ),
//           Text(
//             'History',
//             style: TextStyle(
//                 color: Colors.white.withOpacity(.6),
//                 fontWeight: FontWeight.bold,
//                 fontSize: AppDimensions.fontS),
//           )
//         ],
//       ),
//     ],
//   ),
// ),

// Widget fadedSeprater() {
//   return ShaderMask(
//     shaderCallback: (Rect bounds) {
//       return const LinearGradient(
//         begin: Alignment.topCenter,
//         end: Alignment.bottomCenter,
//         colors: [Colors.transparent, Colors.white, Colors.transparent],
//         stops: [0.0, 0.5, 1.0],
//       ).createShader(bounds);
//     },
//     blendMode: BlendMode.dstIn,
//     child: Container(
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(.5),
//         borderRadius: BorderRadius.circular(AppDimensions.appBarHeight),
//       ),
//       height: 40.h,
//       width: 2.w,
//     ),
//   );
// }
