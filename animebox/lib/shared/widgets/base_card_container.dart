import 'package:flutter/material.dart';

class BaseCardContainer extends StatelessWidget {
  const BaseCardContainer({
    super.key,
    required this.child,
    required this.width,
    required this.margin,
    this.padding,
    this.backgroundImageUrl,
  });

  final double width;
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets? padding;
  final String? backgroundImageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      margin: margin,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        image: backgroundImageUrl != null
            ? DecorationImage(image: NetworkImage(backgroundImageUrl!))
            : null,
        borderRadius: BorderRadius.circular(16),
        color: theme.cardColor,
      ),
      child: child,
    );
  }
}
