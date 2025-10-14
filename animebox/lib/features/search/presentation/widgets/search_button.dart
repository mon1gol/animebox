import 'package:flutter/material.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 16,
        ).copyWith(bottom: 24, top: 28),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.hintColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(Icons.search_rounded, color: theme.cardColor),
            const SizedBox(width: 12),
            Text(
              'Поиск аниме',
              style: TextStyle(
                color: theme.cardColor.withAlpha(100),
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
