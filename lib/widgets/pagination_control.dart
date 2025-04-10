import 'package:flutter/material.dart';

class PaginationControl extends StatelessWidget {
  const PaginationControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPaginationButton(Icons.chevron_left),
        const SizedBox(width: 20),
        _buildPaginationButton(Icons.chevron_right),
      ],
    );
  }

  Widget _buildPaginationButton(IconData icon) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}