import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class Custom_Text_Field extends StatelessWidget {
  final String? labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmit;
  final Function(String)? onChanged;
  final VoidCallback? onTap;
  final String? hintText;
  final VoidCallback? onTapSuffixIcon;
  final VoidCallback? onTapPrefixIcon;
  final IconData? suffixIconData;
  final IconData? prefixIconData;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final Color? hintTextColor;
  final Color? cursorColor;
  final Color? textColor;
  final Color? prefixIconColor;
  final Color? sufixIconColor;
  final Widget? prefixWidget;
  final TextInputType? inputType;
  final bool? obscureText;
  final double? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final bool? borderSide;
  final String? errorText;
  final String? initialValue;
  final bool? readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;
  final TextAlign? textAlign;
  final int? maxLength;

  static const Color _textFieldThemeColor = Color(0xff3d475a);

  const Custom_Text_Field({
    this.textAlign,
    this.readOnly = false,
    this.inputFormatters,
    this.labelText,
    required this.controller,
    this.validator,
    this.onFieldSubmit,
    this.hintText,
    this.onTapSuffixIcon,
    this.suffixIconData,
    this.prefixIconData,
    this.onTapPrefixIcon,
    this.focusNode,
    this.backgroundColor = Colors.white,
    this.hintTextColor = _textFieldThemeColor,
    this.cursorColor = _textFieldThemeColor,
    this.textColor = _textFieldThemeColor,
    this.prefixIconColor = const Color(0xff3d475a),
    this.sufixIconColor = const Color(0xff3d475a),
    this.borderColor = const Color(0xff3d475a),
    this.prefixWidget,
    this.inputType = TextInputType.text,
    this.obscureText = false,
    this.borderRadius = 10,
    this.borderSide = false,
    this.onTap,
    this.onChanged,
    this.errorText,
    this.initialValue,
    this.borderWidth = 0.2,
    this.maxLines = 1,
    this.maxLength,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign:textAlign??TextAlign.start,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      readOnly: readOnly!,
      initialValue: initialValue,
      onChanged: onChanged,
      onTap: onTap,
      obscureText: obscureText!,
      keyboardType: inputType,
      focusNode: focusNode,
      validator: validator,
      cursorWidth: 1,
      cursorColor: cursorColor,
      autofocus: false,
      controller: controller,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
          decoration: TextDecoration.none,
          fontSize: 16,
          color: textColor,
          fontWeight: FontWeight.w600),
      onFieldSubmitted: onFieldSubmit,
      decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,
          errorMaxLines: 3,
          hoverColor: Colors.white,
          errorText: errorText,
          labelText: labelText,
          labelStyle: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color:Colors.white10, fontSize: 16, fontWeight: FontWeight.bold),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText2?.copyWith(
               fontSize:18 , color: hintTextColor),
          contentPadding: EdgeInsets.symmetric(
              horizontal: 20, vertical: maxLines! > 1 ? 8 : 2),
          suffixIcon: suffixIconData == null
              ? null
              : GestureDetector(
            onTap: onTapSuffixIcon!,
            child: Icon(
              suffixIconData,
              size: 20,
              color: sufixIconColor,
            ),
          ),
          //prefix: prefixWidget,
          prefixIconConstraints: BoxConstraints.tight(const Size.fromRadius(12)),

          prefixIcon: prefixWidget ?? (prefixIconData == null
              ? null
              : GestureDetector(
            onTap: onTapPrefixIcon!,
            child: Icon(
              prefixIconData,
              size: 30,
              color: prefixIconColor,
            ),
          )),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: borderSide == true
                ? BorderSide(
              color: borderColor!,
            )
                : BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: borderSide == true
                ? BorderSide(color: borderColor!, width: borderWidth!)
                : BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: borderSide == true
                ? BorderSide(color: borderColor!, width: borderWidth!)
                : BorderSide.none,
          )),
      //  ),
    );
  }
}