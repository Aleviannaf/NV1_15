import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String title;
  final Function(String) onChange;
  final bool obscureText;
  const CustomTextFieldWidget(
      {Key? key, required this.title, required this.onChange, this.obscureText= false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      obscureText: obscureText,
      decoration: InputDecoration(label: Text(title)),
      
    );
  }
}
