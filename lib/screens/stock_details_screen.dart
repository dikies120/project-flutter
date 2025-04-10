import 'package:flutter/material.dart';
import '../models/stock_item.dart';
import '../services/stock_service.dart';
import '../widgets/custom_bottom_nav.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/action_card.dart';
import '../widgets/overview_card.dart';
import '../widgets/inventory_table.dart';
import '../widgets/pagination_control.dart';

class StockDetailsScreen extends StatefulWidget {
  const StockDetailsScreen({Key? key}) : super(key: key);

  @override
  _StockDetailsScreenState createState() => _StockDetailsScreenState();
}

class _StockDetailsScreenState extends State<StockDetailsScreen> {
  final StockService _stockService = StockService();
  List<StockItem> stockItems = [];
  int _currentIndex = 1;

  @override
  void initState() {
    super.initState();
    _loadStockItems();
  }

  Future<void> _loadStockItems() async {
    final items = await _stockService.getStockItems();
    setState(() {
      stockItems = items;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF030F27),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Column(
              children: [
                _buildHeader(),
                _buildSearchBar(),
                _buildActionCards(),
                const SizedBox(height: 20),
                _buildOverviewCards(),
                const SizedBox(height: 17),
                const InventoryTable(),
                const SizedBox(height: 18),
                const PaginationControl(),
                _buildPageIndicator(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      color: const Color.fromRGBO(0, 0, 0, 0.2),
      padding: const EdgeInsets.only(top: 44, bottom: 23),
      alignment: Alignment.center,
      child: const Text(
        'Stock Details',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 20.0),
      child: CustomSearchBar(),
    );
  }

  Widget _buildActionCards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: ActionCard(
              title: 'Purchase History',
              iconUrl: 'https://example.com/purchase_icon.png',
            ),
          ),
          const SizedBox(width: 35),
          Expanded(
            child: ActionCard(
              title: 'Inventory Monitor',
              iconUrl: 'https://example.com/inventory_icon.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOverviewCards() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(child: OverviewCard(title: 'All', total: '99,999', used: '61,612', isHighlighted: true)),
          const SizedBox(width: 8),
          Expanded(child: OverviewCard(title: 'Rolex', total: '767', used: '115', isHighlighted: false)),
          const SizedBox(width: 8),
          Expanded(child: OverviewCard(title: 'Casio', total: '34', used: '15', isHighlighted: false)),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Column(
      children: const [
        SizedBox(height: 13),
        Text(
          '1 of 8 pages (84 items)',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
            height: 2.0,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
