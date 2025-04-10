import 'package:flutter/material.dart';

class OverviewCard extends StatelessWidget {
  final String title;
  final String total;
  final String used;
  final bool isHighlighted;

  const OverviewCard({
    Key? key,
    required this.title,
    required this.total,
    required this.used,
    this.isHighlighted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isHighlighted 
          ? const Color.fromRGBO(33, 150, 243, 0.2) 
          : const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isHighlighted ? Colors.blue : Colors.white,
              fontSize: 12,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            total,
            style: TextStyle(
              color: isHighlighted ? Colors.blue : Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Used: $used',
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 10,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}