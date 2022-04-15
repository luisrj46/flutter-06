import 'package:flutter/material.dart';

class CustomInputField2 extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyboardType;
  final IconData? suffixIcon;
  final IconData? icon;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField2({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: "",
      keyboardType: keyboardType,
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return "Este campo no debe ser nulo";
        return value.length < 3 ? "Minimo 3 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // border: OutlineInputBorder(
        //     borderRadius: BorderRadius.only(
        //   bottomLeft: Radius.circular(10),
        //   topLeft: Radius.circular(10),
        // ))),
      ),
    );
  }
}
