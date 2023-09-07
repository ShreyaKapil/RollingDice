import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  final String value;

  const TextStyleWidget(this.value, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(value,
        style: const TextStyle(color: Colors.white, fontSize: 28));
  }
}
