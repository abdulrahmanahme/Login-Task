
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/app_colors.dart';
import '../../config/app_text_styles.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget(
      {this.labelText,
      this.hintText,
      this.suffixIcon,
      this.controller,
      this.fillColor,
      this.prefix,
      this.keyboardTyp,
      this.label,
      this.labelStyle,
      this.maxLines,
      this.onChanged,
      this.onFieldSubmitted,
      this.style,
      this.validator,
      this.obscureText = false,
      this.focusNode,
      this.onTap,
      super.key,
      this.inputFormatters,
      this.initialValue,
      this.readOnly = false});

  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final String? labelText;
  final Color? fillColor;
  final Widget? prefix;
  final int? maxLines;
  final TextStyle? labelStyle;
  final String? label;
  final TextStyle? style;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool obscureText;
  final TextInputType? keyboardTyp;
  final FocusNode? focusNode;
  final void Function()? onTap;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool readOnly;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      inputFormatters: widget.inputFormatters,
      keyboardType: widget.keyboardTyp ?? TextInputType.text,
      obscureText: widget.obscureText,
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
      validator: widget.validator,
      maxLines: widget.maxLines,
      style: widget.style,
      onTap: widget.onTap,
      initialValue: widget.initialValue,
      readOnly:  widget.readOnly,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: widget.labelStyle,
        hintText: widget.hintText,
        
        hintStyle: AppTextStyle.font14HintStyle400,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.purpleColor,
            width: 2.0,
          ),
        ),
        errorStyle: AppTextStyle.font14Error400,
        contentPadding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
        prefixIcon: widget.prefix,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.textFormFieldBorderColor,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
            width: 2.0,
          ),
        ),
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.blackColor,
          ),
        ),
      ),
    );
  }
}
