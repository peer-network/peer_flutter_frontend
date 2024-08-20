import 'package:flutter/material.dart';
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
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String?)? onFieldSubmitted;
  final int? minLines;
  final int? maxLines;
  final bool? autoFocus;

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
      this.maxLines,
      this.focusNode,
      this.autoFocus})
      : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          focusNode: focusNode,
          controller: controller,
          obscureText: obscureText,
          autofocus: (autoFocus == null) ? true : autoFocus!,
          autofillHints: autofillHints,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          minLines: obscureText == true ? 1 : minLines,
          maxLines: obscureText == true ? 1 : maxLines,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          cursorColor: Theme.of(context).textSelectionTheme.cursorColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).inputDecorationTheme.fillColor,
            hintText: hintText,
            labelText: labelText,
            labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
            floatingLabelStyle:
                Theme.of(context).inputDecorationTheme.floatingLabelStyle,
            alignLabelWithHint: true,
            // floatingLabelBehavior: FloatingLabelBehavior,
            errorBorder: OutlineInputBorder(
              borderSide: Theme.of(context)
                  .inputDecorationTheme
                  .errorBorder!
                  .borderSide,
              borderRadius: AppBorders.defaultRadius,
            ),
            disabledBorder:
                Theme.of(context).inputDecorationTheme.disabledBorder,
            focusedErrorBorder: OutlineInputBorder(
                borderSide: Theme.of(context)
                    .inputDecorationTheme
                    .errorBorder!
                    .borderSide),
            focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
            enabledBorder: OutlineInputBorder(
              borderSide: Theme.of(context)
                  .inputDecorationTheme
                  .enabledBorder!
                  .borderSide,
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
                          color: Theme.of(context).colorScheme.onError,
                        )),
              )
            : const SizedBox(height: 0),
      ],
    );
  }
}
