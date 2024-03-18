import 'package:flutter/material.dart';
import 'package:peer_app/presentation/whitelabel/colors.dart';
import 'package:peer_app/presentation/whitelabel/constants.dart';

class InputFieldComponent extends StatelessWidget {
  final String? footnoteText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<String>? autofillHints;
  final String? labelText;
  final String? hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onFieldSubmitted;
  final int? minLines;
  final int? maxLines;

  const InputFieldComponent(
      {super.key,
      this.footnoteText,
      this.obscureText = false,
      this.keyboardType,
      this.textInputAction,
      this.autofillHints,
      this.onFieldSubmitted,
      this.labelText,
      this.validator,
      this.hintText,
      required this.controller,
      this.minLines,
      this.maxLines})
      : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          autofocus: true,
          autofillHints: autofillHints,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          minLines: obscureText == true ? 1 : minLines,
          maxLines: obscureText == true ? 1 : maxLines,
          validator: validator,
          cursorColor: CustomColors.primaryTextColor,
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
            hintText: hintText,

            labelText: labelText,
            labelStyle: const TextStyle(color: CustomColors.primaryTextColor),
            alignLabelWithHint: true,
            // floatingLabelBehavior: FloatingLabelBehavior,
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: CustomColors.errorBorderColor, width: 1.0),
              borderRadius: AppBorders.defaultRadius,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: CustomColors.errorBorderColor, width: 1.0),
              borderRadius: AppBorders.defaultRadius,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: CustomColors.activeBorderColor, width: 1.0),
              borderRadius: AppBorders.defaultRadius,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1.0, color: CustomColors.inactiveBorderColor),
              borderRadius: AppBorders.defaultRadius,
            ),
            contentPadding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          ).applyDefaults(Theme.of(context).inputDecorationTheme),
        ),
        footnoteText != null
            ? Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 8.0, left: 10),
                child: Text(footnoteText!,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: CustomColors.errorTextColor,
                        )),
              )
            : const SizedBox(height: 0),
      ],
    );
  }
}
