import 'package:animebox/shared/widgets/base_card_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsToggleCard extends StatelessWidget {
  const SettingsToggleCard({
    super.key,
    required this.title,
    this.onChanged,
    required this.value,
  });

  final String title;
  final ValueChanged<bool>? onChanged;
  final bool value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseCardContainer(
      width: double.infinity,
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: theme.textTheme.bodyLarge),
          CupertinoSwitch(value: value, onChanged: onChanged),
        ],
      ),
    );
  }
}
