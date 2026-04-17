import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/core/constants/style_constants.dart';

class ReportChartCaption extends StatelessWidget {
  final String text;
  final Color color;
  final int count;

  const ReportChartCaption({
    super.key,
    required this.text,
    required this.color,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: StyleConstants.outlineBorderColor),
          ),
        ),
        Gap(12),
        Text('$text : $count', style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
