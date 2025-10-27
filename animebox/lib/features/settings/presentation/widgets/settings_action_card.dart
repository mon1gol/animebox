import 'package:animebox/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  final String title;
  final Icon icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: BaseCardContainer(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: theme.textTheme.bodyLarge),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
