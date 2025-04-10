import '../models/order.dart';
import '../models/stock_item.dart';

class OrderService {
  Future<List<Order>> getOrders() async {
    // Simulate orders
    return [
      Order(
        id: '1',
        customerId: 'cust1',
        items: [
          StockItem(
            id: '1',
            name: 'Electronic Watch',
            quantity: 2,
            price: 199.99,
            category: 'Electronics',
          )
        ],
        total: 399.98,
        date: DateTime.now(),
        status: 'Completed',
      ),
    ];
  }
}
