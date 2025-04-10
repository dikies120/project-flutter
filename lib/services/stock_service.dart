import '../models/stock_item.dart';

class StockService {
  Future<List<StockItem>> getStockItems() async {
    // Simulate stock items
    return [
      StockItem(
        id: '1',
        name: 'Electronic Watch',
        quantity: 50,
        price: 199.99,
        category: 'Electronics',
      ),
      StockItem(
        id: '2',
        name: 'Wall Clock',
        quantity: 30,
        price: 79.99,
        category: 'Home Decor',
      ),
    ];
  }
}