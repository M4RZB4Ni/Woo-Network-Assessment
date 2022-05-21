import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woo_network_assessment/app/resources/app_colors.dart';
import 'package:woo_network_assessment/app/resources/app_spacing.dart';
import 'package:woo_network_assessment/app/resources/app_text_style.dart';

class APPSearchBox extends StatefulWidget {
  const APPSearchBox({
    /// key
    final Key? key,
    this.controller,
    this.hint,
    this.onEditingComplete,
    this.onChanged,
    this.onTap,
    this.validator,
    this.prefix,
    this.havePrefix = true,
    this.autofocus = false,
    this.enabled = true,
    this.margin,
    this.contentPadding,
    this.height,
    this.expanded = false,
    this.border,
    this.borderFocus,
    this.errorBorder,
    this.maxLength,
    this.isCurrency = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.textScaleFactor,
    this.labelTxtStyle,
    this.hintTxtStyle,
    this.fieldTxtStyle,
    this.childDatasWidget,
    this.color = AppColors.surface,
  }) : super(key: key);

  /// Controller of this textfield
  final TextEditingController? controller;

  /// Hint text,show in hint.
  final String? hint;

  /// Call back after ediet completed
  final VoidCallback? onEditingComplete;

  /// Validator
  final String? Function(String? text)? validator;

  /// Set prefix
  final Widget? prefix;

  /// have prefix
  final bool havePrefix;

  /// Textfield height size, default (56) - if use expanded, isPassword is false and maxline is null(can use height)
  final double? height;

  /// Default (TextInputAction.next) in keyboard
  final TextInputAction? textInputAction;

  /// Default (TextInputType.text)
  final TextInputType? keyboardType;

  /// Autofocus - default is false
  final bool autofocus;

  /// Enabled - default is true
  final bool enabled;

  /// Textfield padding
  final EdgeInsets? contentPadding;

  /// Default (EdgeInsets.zero)
  final EdgeInsets? margin;

  /// Call back text field change
  final ValueChanged<String>? onChanged;

  /// Set border
  final InputBorder? border;

  /// Set focus border
  final InputBorder? borderFocus;

  /// Set Unvalid border
  final InputBorder? errorBorder;

  /// Set maxLength text field - if use expanded, isPassword is false and maxline is null(can use height)
  final int? maxLength;

  /// If use expanded, isPassword is false and maxline is null(can use height)
  final bool expanded;

  /// Call back ontap
  final VoidCallback? onTap;

  /// Set currency type
  final bool isCurrency;

  /// LabelStyle for text label under text field
  final TextStyle? labelTxtStyle;

  /// HintStyle for text field
  final TextStyle? hintTxtStyle;

  /// FieldStyle
  final TextStyle? fieldTxtStyle;

  /// Set textScaleFactor
  final double? textScaleFactor;

  /// Widget that show after searchbox
  final Widget? childDatasWidget;

  /// Color of Component
  final Color color;

  @override
  APPSearchBoxState createState() => APPSearchBoxState();
}

class APPSearchBoxState extends State<APPSearchBox> {
  bool isActive = false;
  @override
  Widget build(final BuildContext context) {
    return Container(
      color: widget.color,
      padding: widget.margin ?? AppSpacing.s16All,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Focus(
            onFocusChange: (final val) {
              setState(() {
                isActive = val;
              });
            },
            child: TextFormField(
              onTap: widget.onTap,
              validator: (final input) {
                return widget.enabled
                    ? widget.validator != null
                        ? widget.validator!(input)!
                        : null
                    : null;
              },
              onFieldSubmitted: widget.onChanged,
              // ignore: avoid_bool_literals_in_conditional_expressions
              enabled: widget.onTap == null ? widget.enabled : false,
              style: widget.fieldTxtStyle ?? AppTextStyles.bodyText2,
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              autocorrect: false,
              autofocus: widget.autofocus,
              maxLength: widget.maxLength,
              decoration: InputDecoration(
                helperText: ' ',
                isDense: false,
                errorStyle: const TextStyle(height: 1),
                hintText: widget.hint,
                hintStyle: AppTextStyles.hintTextField.copyWith(
                  color: isActive
                      ? AppColors.grey700
                      : AppColors.grey700.withOpacity(.5),
                ),
                prefixIcon: widget.havePrefix
                    ? widget.prefix == null
                        ? Icon(
                            Icons.search,
                            color: isActive
                                ? AppColors.grey700
                                : AppColors.grey700.withOpacity(.5),
                          )
                        : Padding(
                            padding: AppSpacing.s12Horizontal.r,
                            child: widget.prefix,
                          )
                    : null,
                contentPadding:
                    widget.contentPadding ?? AppSpacing.s35Top16Left16Right.r,
                filled: true,
                fillColor: Colors.transparent,
              ),
              textInputAction: widget.textInputAction,
              onEditingComplete: widget.onEditingComplete ??
                  () => FocusScope.of(context).nextFocus(),
            ),
          ),
          widget.childDatasWidget ?? Container(),
        ],
      ),
    );
  }
}
