import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_playgound/nopecho_flow/internationalization.dart';
import 'package:flutter_playgound/ui/pages/chat/chat_page.dart';
import 'package:flutter_playgound/ui/pages/home/home_page.dart';
import 'package:flutter_playgound/ui/pages/login/login_page.dart';
import 'package:flutter_playgound/ui/pages/onboarding/onboarding_page.dart';
import 'package:flutter_playgound/ui/pages/signup/signup_page.dart';
import 'package:get/get.dart';
import 'package:flutter_playgound/config/app_config.dart';

import 'nopecho_flow/flutter_flow_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await setupAppConfig();
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {

  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
    _themeMode = mode;
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "nopecho flutter playground",
      locale: _locale,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko'),
      ],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/signup', page: () => const SingUpPage()),
        GetPage(name: '/onboarding', page: () => const OnBoardingPage()),
        GetPage(name: '/chat', page: () => const ChatPage()),
      ],
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'HomePage';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': const HomePage(),
      'ChatPage': const ChatPage(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: Colors.white,
        selectedItemColor: FlutterFlowTheme.of(context).primary,
        unselectedItemColor: const Color(0x8A000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline_outlined,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
