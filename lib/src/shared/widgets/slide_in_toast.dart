import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class ToastManager {
  static void show(
      {required BuildContext context,
      required String message,
      Duration duration = const Duration(seconds: 3),
      bool fromTop = true,
      Widget icon = const SizedBox()}) {
    final overlay = Overlay.of(context);

    // OverlayEntry to display the toast
    final overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: fromTop ? AppDimensions.spacingXL : null,
          bottom: fromTop ? null : AppDimensions.spacingXL,
          left: 16.0,
          right: 16.0,
          child: _ToastWidget(
            message: message,
            duration: duration,
            icon: icon,
          ),
        );
      },
    );

    // Insert the overlay entry
    overlay.insert(overlayEntry);

    // Remove the overlay entry after the duration
    Future.delayed(duration + const Duration(milliseconds: 300), () {
      overlayEntry.remove();
    });
  }
}

class _ToastWidget extends StatefulWidget {
  final String message;
  final Duration duration;
  final Widget icon;

  const _ToastWidget(
      {required this.message, required this.duration, required this.icon});

  @override
  State<_ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<_ToastWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));

    _scaleAnimation = Tween<double>(
      begin: 0.9,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _controller.forward();

    Future.delayed(widget.duration, () {
      _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          elevation: 6,
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.paddingM,
                vertical: AppDimensions.paddingS),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.8),
              borderRadius: BorderRadius.circular(AppDimensions.radiusS),
            ),
            child: Row(
              children: [
                widget.icon,
                SizedBox(
                  width: AppDimensions.spacingM,
                ),
                Expanded(
                  child: Text(
                    widget.message,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
