import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class GoodsHomePage extends StatelessWidget {
  const GoodsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        child: Center(
      child: Text(
        "Comming soon",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: AppDimensions.fontL),
      ),
    ));
  }
}
