import 'package:flutter/material.dart';

class DefaultCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final VoidCallback? onTap;
  final Color? color;
  final Border? border;

  const DefaultCard({
    required this.child,
    this.margin = const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 12.0,
    ),
    this.padding = const EdgeInsets.all(16.0),
    this.onTap,
    this.color,
    this.border,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: padding,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            border: border,
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            boxShadow: const [
              BoxShadow(
                color: Color(0x4D909BA8),
                offset: Offset(1.0, 3.0),
                blurRadius: 12.0,
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
