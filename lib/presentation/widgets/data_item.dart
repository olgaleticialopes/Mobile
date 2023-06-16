import 'package:flutter/material.dart';
class DataItem extends StatelessWidget {

  final String label;
  final String content;
  final Alignment alignment;

  const DataItem({super.key, required this.label, required this.content,
  this.alignment = Alignment.centerLeft, 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Text(label),
          Align(
            alignment: alignment,
            child: Text(content),
          )
        ],
      ),
    );
  }
}