import 'package:flutter/material.dart';

class SliverErrorMessage extends StatelessWidget {
  const SliverErrorMessage({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SliverToBoxAdapter(
      child: Center(
        child: Column(
          children: [
            Text(
              'Произошла ошибка',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 12),
            Text(error.toString(), style: theme.textTheme.labelLarge),
          ],
        ),
      ),
    );
  }
}