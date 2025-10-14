import 'package:animebox/core/widgets/index.dart';
import 'package:animebox/shared/widgets/anime_list_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SimpleAppBar(
            height: 50,
            title: 'Профиль',
            pinned: true,
            tabBar: TabBar(
              
              isScrollable: true,
              controller: _tabController,
              tabs: [
                Tab(text: 'Смотрю'),
                Tab(text: 'Просмотрено'),
                Tab(text: 'Отложено'),
                Tab(text: 'Брошено'),
                Tab(text: 'Запланировано'),
              ],
            ),
          ),
        ];
      },
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: TabBarView(
          controller: _tabController,
          children: [
            CustomScrollView(slivers: [SliverGridCardsContainer(children: List.generate(10, (index) => AnimeCard()))]),
            CustomScrollView(slivers: [SliverGridCardsContainer(children: List.generate(10, (index) => AnimeCard()))]),
            CustomScrollView(slivers: [SliverGridCardsContainer(children: List.generate(10, (index) => AnimeCard()))]),
            CustomScrollView(slivers: [SliverGridCardsContainer(children: List.generate(10, (index) => AnimeCard()))]),
            CustomScrollView(slivers: [SliverGridCardsContainer(children: List.generate(10, (index) => AnimeCard()))]),
          ],
        ),
      ),
    );
  }
}
