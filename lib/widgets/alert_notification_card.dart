import 'package:flutter/material.dart';

class AlertNotificationCard extends StatelessWidget {
  const AlertNotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow.withOpacity(0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            Icon(Icons.notifications, color: Colors.yellow, size: 30),
            SizedBox(height: 10),
            Text(
              'Alert',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
