import 'package:flutter/material.dart';

class SliverErrorMessage extends StatelessWidget {
  const SliverErrorMessage({super.key, required this.error, this.stack});

  final String error;
  final String? stack;

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
            SizedBox(height: 12,),
            Text('Стек', style: Theme.of(context).textTheme.titleLarge,),
            Text(stack ?? '')
          ],
        ),
      ),
    );
  }
}