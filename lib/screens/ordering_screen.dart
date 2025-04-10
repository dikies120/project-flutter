import 'package:flutter/material.dart';
import '../widgets/tab_navigation.dart';
import '../widgets/stock_alert_card.dart';
import '../widgets/alert_notification_card.dart';
import '../widgets/inventory_table.dart';
import '../widgets/pagination_controls.dart';
import '../widgets/custom_bottom_nav.dart'; 

class OrderingScreen extends StatefulWidget {
  const OrderingScreen({Key? key}) : super(key: key);

  @override
  _OrderingScreenState createState() => _OrderingScreenState();
}

class _OrderingScreenState extends State<OrderingScreen> {
  int _currentIndex = 2; // ✅ Set index sesuai halaman Ordering

  void _onNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF030F27),
      appBar: AppBar(
        backgroundColor: const Color(0xFF030F27),
        title: const Text(
          'Ordering',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: const TabNavigation(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                _buildAlertSection(),
                const SizedBox(height: 18),
                _buildStockIndicator(),
                const SizedBox(height: 24),
                const InventoryTable(),
                const SizedBox(height: 18),
                const PaginationControls(),
                _buildPageIndicator(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onNavTap, // ✅ Pastikan fungsi ini ada
      ),
    );
  }

  /// **Bagian Stock Alert & Notification Alert**
  Widget _buildAlertSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Expanded(child: StockAlertCard()),
          SizedBox(width: 20),
          Expanded(child: AlertNotificationCard()),
        ],
      ),
    );
  }

  /// **Bagian Indicator "New Stock"**
  Widget _buildStockIndicator() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(23),
      ),
      child: const Text(
        'New Stocks',
        style: TextStyle(
          fontFamily: 'Abel',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          height: 1.5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  /// **Bagian Page Indicator**
  Widget _buildPageIndicator() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFD3BDB0), width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Text(
          '1 of 8 pages (84 items)',
          style: TextStyle(
            color: Color(0xFFD3BDB0),
            fontSize: 10,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
