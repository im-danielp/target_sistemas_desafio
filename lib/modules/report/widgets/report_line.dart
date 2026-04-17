import 'package:flutter/material.dart';
import 'package:target/core/constants/style_constants.dart';

class ReportLine extends StatelessWidget {
  final String title;
  final String count;

  const ReportLine({
    super.key,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: StyleConstants.outlineBorderColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(count),
        ],
      ),
    );
  }
}
