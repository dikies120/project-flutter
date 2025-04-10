import 'package:flutter/material.dart';

class ReportsTabBar extends StatelessWidget {
  const ReportsTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left tabs
        Row(
          children: [
            _buildTab('Dashboard', isActive: true),
            const SizedBox(width: 10),
            _buildTab('Stock Details'),
          ],
        ),

        // Right tabs
        Row(
          children: [
            _buildTab('Ordering'),
            const SizedBox(width: 24),
            _buildActiveTabWithIndicator('Report'),
            const SizedBox(width: 24),
            _buildTab('Profile'),
          ],
        ),
      ],
    );
  }

  Widget _buildTab(String label, {bool isActive = false}) {
    return Container(
      height: 43,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
        child: Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'DM Sans',
            fontSize: 12,
            fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
            height: 2,
          ),
        ),
      ),
    );
  }

  Widget _buildActiveTabWithIndicator(String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'DM Sans',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 2,
            ),
          ),
        ),
        Container(
          height: 3,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
      ],
    );
  }
}