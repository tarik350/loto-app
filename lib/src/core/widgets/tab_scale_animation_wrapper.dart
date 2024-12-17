import 'package:flutter/material.dart';

class ScaleOnTapAnimationWrapper extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const ScaleOnTapAnimationWrapper({
    super.key,
    required this.child,
    this.onTap,
  });

  @override
  _ScaleOnTapAnimationWrapperState createState() =>
      _ScaleOnTapAnimationWrapperState();
}

class _ScaleOnTapAnimationWrapperState extends State<ScaleOnTapAnimationWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300), // Bounce duration.
    );

    _scaleAnimation = TweenSequence<double>([
      // Shrinking effect.
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 0.9)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 50,
      ),
      // Springy bounce-back.
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.9, end: 1.0)
            .chain(CurveTween(curve: Curves.elasticOut)),
        weight: 50,
      ),
    ]).animate(_controller);
  }

  void _onTapDown(TapDownDetails details) {
    // Start shrinking.
    _controller.reset();
    _controller.forward(from: 0);
  }

  void _onTapUp(TapUpDetails details) {
    // Trigger bounce-back effect.
    _controller.forward();
    widget.onTap?.call();
  }

  void _onTapCancel() {
    // Ensure it bounces back if the gesture is canceled.
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}
