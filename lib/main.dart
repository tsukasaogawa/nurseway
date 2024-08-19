import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nurseway_app/pages/setting/login_page.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/setting/terms_and_privacy/terms_and_privacy_dialog.dart';
import 'package:nurseway_app/pages/setting/settings_page.dart';
import 'package:nurseway_app/constants/tab_item.dart';
import 'package:nurseway_app/pages/home_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env"); // dotenv のロードを最初に行う
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  await Hive.openBox('filters');
  await Hive.openBox('favorites');

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool agreedToTerms = prefs.getBool('agreedToTerms') ?? false;
  bool isLoggedIn = FirebaseAuth.instance.currentUser != null;

  runApp(MyApp(
    agreedToTerms: agreedToTerms,
    isLoggedIn: isLoggedIn,
  ));
}

class MyApp extends StatelessWidget {
  final bool agreedToTerms;
  final bool isLoggedIn;

  const MyApp({
    super.key,
    required this.agreedToTerms,
    required this.isLoggedIn,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isLoggedIn
          ? (agreedToTerms
              ? const MainAppPage()
              : const MainAppPageWithTermsDialog())
          : const LoginPage(),
    );
  }
}

class MainAppPageWithTermsDialog extends StatelessWidget {
  const MainAppPageWithTermsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        MainAppPage(), // 背景にホームページを表示
        TermsAndPrivacyDialog(), // 利用規約のポップアップを表示
      ],
    );
  }
}

class MainAppPage extends StatefulWidget {
  const MainAppPage({super.key});

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  final TabItem _currentTab = TabItem.home;
  final Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.config: GlobalKey<NavigatorState>(),
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildOffstageNavigator(TabItem.home),
          _buildOffstageNavigator(TabItem.config),
        ],
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      ),
    );
  }
}

class TabNavigator extends StatelessWidget {
  const TabNavigator({
    super.key,
    required this.navigatorKey,
    required this.tabItem,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => _pageBuilder(tabItem),
        );
      },
    );
  }

  Widget _pageBuilder(TabItem tabItem) {
    switch (tabItem) {
      case TabItem.home:
        return const HomePage();
      case TabItem.config:
        return const SettingsPage();
      default:
        return const HomePage();
    }
  }
}
