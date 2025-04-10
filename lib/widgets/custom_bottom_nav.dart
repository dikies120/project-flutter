import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigation({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.secondaryBackground,
      unselectedItemColor: Colors.grey,
      selectedItemColor: AppColors.primaryBlue,
      currentIndex: currentIndex,
      onTap: (index) {
        // Tambahkan navigasi berdasarkan index
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/dashboard');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/stock-details');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/ordering');
            break;
          case 3:
            Navigator.pushReplacementNamed(context, '/reports');
            break;
          case 4:
            Navigator.pushReplacementNamed(context, '/profile');
            break;
        }
        onTap(index);
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Stock'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Order'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Reports'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}