import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  String hint_text;
  bool isPassword;
  TextEditingController TEC;
  TextBox(
      {super.key,
      this.hint_text = "",
      this.isPassword = false,
      required this.TEC});
  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  late bool _isPasswordVisible = widget.isPassword;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.TEC,
      obscureText: _isPasswordVisible,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          suffixIcon: (widget.isPassword)
              ? IconButton(
                  icon: (_isPasswordVisible)
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  color: Colors.white,
                  onPressed: (() {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  }),
                )
              : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide.none),
          hintText: widget.hint_text,
          filled: true,
          fillColor: const Color.fromARGB(255, 54, 54, 54),
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}
