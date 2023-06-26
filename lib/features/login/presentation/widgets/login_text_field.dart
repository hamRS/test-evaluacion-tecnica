import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_tech/core/ui/constants/colors.dart';

class LoginTextField extends StatefulWidget {
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
  final Function? onChanged;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int? maxLength;

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      maxLength: widget.maxLength,
      obscureText: widget.obscureText ?? false,
      onChanged: (value) => widget.onChanged!(value),
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      style: const TextStyle(
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText ?? "",
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
