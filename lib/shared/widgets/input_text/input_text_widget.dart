import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String label;
  final String? Function (String? value) validator;
  final ValueChanged<String> onChanged;
  final bool obscureText;

  const InputTextWidget({Key? key, this.controller, this.textInputType = TextInputType.text, required this.label, required this.validator, required this.onChanged, required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
