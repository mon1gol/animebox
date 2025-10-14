import 'package:animebox/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseBottomSheet(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: theme.hintColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Icon(Icons.search_rounded, color: theme.cardColor),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: controller,
                style: TextStyle(
                  color: theme.cardColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: 'Название, автор, фраза',
                  hintStyle: TextStyle(
                    color: theme.cardColor.withAlpha(100),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
