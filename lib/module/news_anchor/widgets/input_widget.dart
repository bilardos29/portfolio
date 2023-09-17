import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String title;
  final String? hint;
  final String? error;
  final bool isVisible;
  final bool showIcon;
  final TextEditingController? controller;

  const InputWidget(
      {required this.title,
      this.hint,
      this.error,
      this.isVisible = false,
      this.showIcon = false,
      this.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: title,
          hintText: hint,
          errorText: error,
          suffixIcon: showIcon
              ? Image.asset(
                  'images/news/${isVisible ? 'ic_eye_show' : 'ic_eye_hide'}.png',
                  scale: 24,
                )
              : const SizedBox()),
    );
  }
}
