import 'package:flutter/material.dart';

import 'screens/nasheed_screen.dart';
import 'screens/prayer_times_screen.dart';
import 'screens/record_screen.dart';
import 'screens/tasbeeh_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const IslamicCompanionApp());
}

class IslamicCompanionApp extends StatelessWidget {
  const IslamicCompanionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeShell();
  }
}

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _currentIndex = 0;
  ThemeMode _themeMode = ThemeMode.system;

  void _cycleThemeMode() {
    setState(() {
      _themeMode = switch (_themeMode) {
        ThemeMode.system => ThemeMode.light,
        ThemeMode.light => ThemeMode.dark,
        ThemeMode.dark => ThemeMode.system,
      };
    });
  }

  IconData get _themeIcon {
    return switch (_themeMode) {
      ThemeMode.system => Icons.brightness_auto,
      ThemeMode.light => Icons.light_mode,
      ThemeMode.dark => Icons.dark_mode,
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamic Companion',
      themeMode: _themeMode,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Islamic Companion'),
          actions: [
            IconButton(
              icon: Icon(_themeIcon),
              onPressed: _cycleThemeMode,
            ),
          ],
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: const [
            TasbeehScreen(),
            NasheedScreen(),
            PrayerTimesScreen(),
            RecordScreen(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.touch_app),
              label: 'Tasbeeh',
            ),
            NavigationDestination(
              icon: Icon(Icons.music_note),
              label: 'Nasheed',
            ),
            NavigationDestination(
              icon: Icon(Icons.access_time),
              label: 'Prayer Times',
            ),
            NavigationDestination(
              icon: Icon(Icons.calendar_month),
              label: 'Record',
            ),
          ],
        ),
      ),
    );
  }
}
