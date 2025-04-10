import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/stock_details_screen.dart';
import 'screens/ordering_screen.dart';
import 'screens/reports_screen.dart';
import 'screens/profile_screen.dart';
import 'constants/app_colors.dart';

void main() {
  runApp(const ImamStoreApp());
}

class ImamStoreApp extends StatelessWidget {
  const ImamStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMAM Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.secondaryBackground,
          elevation: 0,
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/stock-details': (context) => const StockDetailsScreen(),
        '/ordering': (context) => const OrderingScreen(),
        '/reports': (context) => const ReportsScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}