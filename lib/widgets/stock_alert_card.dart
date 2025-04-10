import 'package:flutter/material.dart';

class StockAlertCard extends StatelessWidget {
  const StockAlertCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            Icon(Icons.warning, color: Colors.red, size: 30),
            SizedBox(height: 10),
            Text(
              'Stock Alert',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
