// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  Color color;
  String prefix;
  Color textColor;
  String hint_text;
  String error_text;
  String label_text;
  bool isPassword;
  TextEditingController TEC;
  TextBox(
      {super.key,
      this.hint_text = "",
      this.label_text = "",
      this.error_text = "",
      this.color = const Color.fromARGB(255, 54, 54, 54),
      this.textColor = Colors.white,
      this.prefix = "",
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
      style: TextStyle(color: widget.textColor),
      decoration: InputDecoration(
          errorText: (widget.error_text.isEmpty) ? null : widget.error_text,
          prefixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: (widget.prefix != "")
              ? Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(widget.prefix,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 182, 182, 182))),
                )
              : null,
          suffixIcon: (widget.isPassword)
              ? IconButton(
                  icon: (_isPasswordVisible)
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility),
                  color: widget.textColor,
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
          hintText: (widget.hint_text != "") ? widget.hint_text : null,
          label: (widget.label_text != "") ? Text(widget.label_text) : null,
          filled: true,
          fillColor: widget.color,
          hintStyle: TextStyle(color: widget.textColor),
          labelStyle: TextStyle(color: widget.textColor)),
    );
  }
}
