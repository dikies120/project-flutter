import 'package:flutter/material.dart';

class PaginationControls extends StatelessWidget {
  const PaginationControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/00669ef283d88dfe5b687d52357486ddc1211e1e?placeholderIfAbsent=true&apiKey=bb427b9264ad4fdfb8f3a6dce16f6e81',
            width: 19,
            height: 19,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 5),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/cbc88a2c89a6cc5a5b21fa8dcd3ff44011ef43a7?placeholderIfAbsent=true&apiKey=bb427b9264ad4fdfb8f3a6dce16f6e81',
            width: 10,
            height: 10,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 5),
          _buildPageButton('1', true),
          const SizedBox(width: 5),
          _buildPageButton('2', false),
          const SizedBox(width: 5),
          _buildPageButton('3', false),
          const SizedBox(width: 5),
          _buildPageButton('4', false),
          const SizedBox(width: 5),
          _buildPageButton('5', false),
          const SizedBox(width: 5),
          _buildPageButton('6', false),
          const SizedBox(width: 5),
          _buildPageButton('7', false),
          const SizedBox(width: 5),
          _buildPageButton('8', false),
          const SizedBox(width: 5),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/663c0005ff4384fc5f251b318b0b08232977e3d7?placeholderIfAbsent=true&apiKey=bb427b9264ad4fdfb8f3a6dce16f6e81',
            width: 10,
            height: 10,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 5),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/b6d75096f8eb4fc1be29e1239c2370d09ff8b623?placeholderIfAbsent=true&apiKey=bb427b9264ad4fdfb8f3a6dce16f6e81',
            width: 19,
            height: 19,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  Widget _buildPageButton(String text, bool isActive) {
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFA67B5B) : Colors.transparent,
        borderRadius: BorderRadius.circular(3),
        border: isActive
            ? null
            : Border.all(
                color: Colors.white,
                width: 1,
              ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          height: 2.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}