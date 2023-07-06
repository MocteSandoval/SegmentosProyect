import 'package:flutter/material.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
        indent: 20,
        endIndent: 30,
        height: 3,
        thickness: 3,
        color: Colors.black);
  }
}