import 'package:flutter/material.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({
    super.key,
    this.child,
    this.height,
    required this.title,
    this.pinned,
    this.tabBar,
    this.toolbarHeight,
  });

  final Widget? child;
  final double? height;
  final bool? pinned;
  final TabBar? tabBar;
  final double? toolbarHeight;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SliverAppBar(
      snap: true,
      pinned: pinned ?? true,
      floating: true,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      toolbarHeight: toolbarHeight ?? kToolbarHeight,
      elevation: 0,
      title: Text(title, style: theme.textTheme.titleLarge),
      bottom:
          tabBar ??
          PreferredSize(
            preferredSize: Size.fromHeight(height ?? 100),
            child: child ?? SizedBox(),
          ),
    );
  }
}
