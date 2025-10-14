import 'package:flutter/material.dart';

class CardsTitle extends StatelessWidget {
  const CardsTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(title, style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
