import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

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
              hintText: 'ፈልግ...',
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
