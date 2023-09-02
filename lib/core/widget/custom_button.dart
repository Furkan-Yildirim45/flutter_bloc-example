import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    required this.onTap,
    required this.child,
  });

  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final void Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 40,
        width: width ?? 40,
        child: InkWell(
            borderRadius: borderRadius ?? BorderRadius.circular(20),
            onTap: onTap,
            child: child));
  }
}