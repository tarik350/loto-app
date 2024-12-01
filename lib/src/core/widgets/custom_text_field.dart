import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/constants/app_%20colors.dart';
import 'package:mobile_app/src/core/constants/app_dimensions.dart';

class CustomTextField extends StatefulWidget {
  final String? title;
  final String fieldKey;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String? initialValue;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool isPassword;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? style;
  final bool readOnly;

  const CustomTextField({
    super.key,
    this.title,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.validator,
    this.controller,
    this.isPassword = false,
    this.readOnly = false,
    this.initialValue,
    this.contentPadding,
    this.style,
    required this.fieldKey,
    this.height,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          Text(
            widget.title!,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: AppDimensions.spacingXS),
        ],
        TextFormField(
          key: Key(widget.fieldKey),
          controller: widget.controller,
          obscureText: widget.isPassword ? _obscureText : false,
          keyboardType: widget.keyboardType,
          onChanged: widget.onChanged,
          initialValue: widget.initialValue,
          validator: widget.validator,
          style: widget.style,
          textAlignVertical: TextAlignVertical.center,
          readOnly: widget.readOnly,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            isCollapsed: true,
            errorStyle: const TextStyle(height: 0),
            hintText: widget.hintText,
            filled: true,
            fillColor: AppColors.lightGray.withOpacity(.4),
            isDense: true,
            suffixIcon: widget.isPassword
                ? IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.primaryColor,
                      size: AppDimensions.iconS,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              borderSide: const BorderSide(color: AppColors.lightGray),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              borderSide:
                  BorderSide(color: AppColors.lightGray.withOpacity(0.8)),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              borderSide: const BorderSide(color: Colors.red),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              borderSide: const BorderSide(color: AppColors.lightGray),
            ),
          ),
        ),
      ],
    );
  }
}
