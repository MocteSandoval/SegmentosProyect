import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String type;
  final void Function() onTap;
  IconButton? iconButton;
  final bool autofocus;

  SearchField({
    super.key,
    this.iconButton,
    required this.type,
    required this.onTap, required this.autofocus,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: TextField(
        autofocus: autofocus,
        onTap: onTap,
        decoration: InputDecoration(
          suffixIcon: iconButton,
          hintText: '$type',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
