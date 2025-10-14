import 'package:flutter/material.dart';

class BaseCardContainer extends StatelessWidget {
  const BaseCardContainer({
    super.key,
    required this.child,
    required this.width,
    required this.margin,
    this.padding,
    this.backgroundImageUrl,
    this.height = 180,
  });

  final double width;
  final double height;
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets? padding;
  final String? backgroundImageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        image: backgroundImageUrl != null
            ? DecorationImage(
                image: NetworkImage(backgroundImageUrl!),
                fit: BoxFit.cover,
              )
            : null,
        borderRadius: BorderRadius.circular(16),
        color: theme.cardColor,
      ),
      child: child,
    );
  }
}
