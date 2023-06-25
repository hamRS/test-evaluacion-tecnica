import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    this.inputFormatters,
    this.hintText,
    this.onChanged,
    this.keyboardType,
    this.obscureText,
    this.maxLength,
  });

  final List<TextInputFormatter>? inputFormatters;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int? maxLength;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      obscureText: obscureText ?? false,
      onChanged: onChanged,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      style: const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: hintText ?? "",
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: kSecondaryColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: kAccentColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
