class Order {
  final String id;
  final String customerId;
  final List<dynamic> items;
  final double total;
  final DateTime date;
  final String status;

  Order({
    required this.id,
    required this.customerId,
    required this.items,
    required this.total,
    required this.date,
    required this.status,
  });
}