import 'package:animebox/core/widgets/index.dart';
import 'package:animebox/features/settings/presentation/widgets/index.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SimpleAppBar(height: 50, title: 'Настройки', pinned: false),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            value: true,
            title: 'Темная тема',
            onChanged: (value) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            value: false,
            title: 'Уведомления',
            onChanged: (value) {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsToggleCard(
            value: true,
            title: 'Собирать статистику',
            onChanged: (value) {},
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SettingsActionCard(
            title: 'Очистить историю',
            icon: Icon(Icons.delete, size: 28),
            onTap: () {},
          ),
        ),
        SliverToBoxAdapter(
          child: SettingsActionCard(
            title: 'Поддержка',
            icon: Icon(Icons.message, size: 28),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
