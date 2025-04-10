import 'package:flutter/material.dart';

class SalesSummaryCard extends StatelessWidget {
  final String title;
  final String amount;
  final String description;
  final String? secondaryAmount;
  final String? secondaryDescription;
  final bool isSecondaryRight;

  const SalesSummaryCard({
    Key? key,
    required this.title,
    required this.amount,
    required this.description,
    this.secondaryAmount,
    this.secondaryDescription,
    this.isSecondaryRight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(19, 18, 19, 28),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              color: Color(0xFFD3BDB0),
              fontSize: 14,
              fontFamily: 'Abel',
              fontWeight: FontWeight.w400,
            ),
          ),

          // Primary amount
          Container(
            width: double.infinity,
            height: 70,
            alignment: Alignment.centerLeft,
            child: Text(
              amount,
              style: const TextStyle(
                color: Color(0xFFD3BDB0),
                fontSize: 36,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
                height: 1.2,
              ),
            ),
          ),

          // Description (tidak tertimpa oleh amount)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              description,
              style: const TextStyle(
                color: Color(0xFFD3BDB0),
                fontSize: 14,
                fontFamily: 'Abel',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          // Secondary amount and description if provided
          if (secondaryAmount != null && secondaryDescription != null)
            Column(
              crossAxisAlignment:
                  isSecondaryRight ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 9, right: 21),
                  child: Text(
                    secondaryAmount!,
                    style: const TextStyle(
                      color: Color(0xFFD3BDB0),
                      fontSize: 36,
                      fontFamily: 'Abel',
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text(
                    secondaryDescription!,
                    textAlign: isSecondaryRight ? TextAlign.right : TextAlign.left, // ✅ Perbaikan textAlign
                    style: const TextStyle(
                      color: Color(0xFFD3BDB0),
                      fontSize: 14,
                      fontFamily: 'Abel',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
