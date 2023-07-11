import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  final Color color;


  const CustomButton({super.key, required this.child, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    

    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: 135,
        height: 85,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
              color: color,
              child: InkWell(
                onTap: onPressed,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: child
                ),
              )),
        ),
      ),
    );
  }
}

class CustomPrincipalButton extends StatelessWidget {
    final Widget child;
  final void Function() onPressed;
  final Color color;
  const CustomPrincipalButton({super.key, required this.child, required this.onPressed, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: 278,
        height: 85,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
              color: color,
              child: InkWell(
                onTap: onPressed,
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: child
                ),
              )),
        ),
      ),
    );
  }
}