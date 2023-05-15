import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.child,
    required this.backgroundColor,
    required this.borderRadius,
  });
  final Widget child;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 48),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
      child: child,
      onPressed: () {},
    );
  }
}
