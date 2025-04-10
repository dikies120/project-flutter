import 'package:flutter/material.dart';

class TabNavigation extends StatelessWidget {
  const TabNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Stock List',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Orders',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
