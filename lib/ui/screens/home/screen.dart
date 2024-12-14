import 'package:explocive_detection/ui/screens/home/bloc/bloc.dart';
import 'package:explocive_detection/ui/screens/home/bloc/state.dart';
import 'package:explocive_detection/ui/screens/main/screen.dart';
import 'package:explocive_detection/ui/screens/map/screen.dart';
import 'package:explocive_detection/ui/screens/notification/screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum BottomBarItems {
  home(
    'Головна',
    Icons.home,
  ),
  map("Мапа", Icons.map),
  notifications(
    'Повідомлення',
    Icons.notifications,
  );

  final String title;
  final IconData icon;

  const BottomBarItems(
    this.title,
    this.icon,
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: context.read(),
      builder: (context, state) {
        final pages = [
          MainScreen(
            router: context.read(),
          ),
          MapScreen(),
          NotificationScreen(),
        ];
        return Scaffold(
          appBar: AppBar(
            title: Text('MineSafe'),
            actions: [
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () async {
                  context.read<HomeBloc>().logOut();
                },
              )
            ],
          ),
          body: AnimatedSwitcher(
            duration: Durations.medium1,
            child: IndexedStack(
              key: ValueKey(_selectedIndex),
              index: _selectedIndex,
              children: pages,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              context.read<HomeBloc>().navReport();
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (value) => (setState(
              () {
                _selectedIndex = value;
              },
            )),
            items: [
              ...BottomBarItems.values.map(
                (e) => BottomNavigationBarItem(
                  icon: Icon(e.icon),
                  label: e.title,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
