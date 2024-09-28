import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/screens/game_detail/widgets/lottery_number_selector.dart';

@RoutePage()
class GameDetailScreen extends StatelessWidget {
  final Color color;
  const GameDetailScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LotteryNumberSelector(
        selectedColor: color,
      ),
    );
  }
}
