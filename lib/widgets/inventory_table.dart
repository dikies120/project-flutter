import 'package:flutter/material.dart';

class InventoryTable extends StatelessWidget {
  const InventoryTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 255, 255, 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Table(
        border: TableBorder.symmetric(
          inside: BorderSide(color: Colors.white.withOpacity(0.1)),
        ),
        columnWidths: const {
          0: FlexColumnWidth(2),
          1: FlexColumnWidth(1),
          2: FlexColumnWidth(1),
          3: FlexColumnWidth(1),
        },
        children: [
          _buildTableHeader(),
          ..._buildTableRows(),
        ],
      ),
    );
  }

  TableRow _buildTableHeader() {
    return TableRow(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.2),
      ),
      children: const [
        _TableHeaderCell(text: 'Item Name'),
        _TableHeaderCell(text: 'Category'),
        _TableHeaderCell(text: 'Quantity'),
        _TableHeaderCell(text: 'Price'),
      ],
    );
  }

  List<TableRow> _buildTableRows() {
    return List.generate(5, (index) {
      return TableRow(
        children: [
          _TableDataCell(text: 'Electronic Watch'),
          _TableDataCell(text: 'Electronics'),
          _TableDataCell(text: '50'),
          _TableDataCell(text: '\$199.99'),
        ],
      );
    });
  }
}

class _TableHeaderCell extends StatelessWidget {
  final String text;

  const _TableHeaderCell({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _TableDataCell extends StatelessWidget {
  final String text;

  const _TableDataCell({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
