import 'package:animebox/shared/widgets/index.dart';
import 'package:flutter/material.dart';

class AnimeListHorizontal extends StatelessWidget {
  const AnimeListHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BaseCardContainer(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          width: 250,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text("АниБокс", style: theme.textTheme.titleMedium),
          ),
        ),
      ),
    );
  }
}
