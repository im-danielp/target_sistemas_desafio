import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:gap/gap.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/modules/report/stores/report_store.dart';
import 'package:target/modules/report/widgets/report_chart_caption.dart';

class ReportChart extends StatelessWidget {
  final ReportStore reportStore;

  const ReportChart({super.key, required this.reportStore});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: StyleConstants.outlineBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Comparativo entre caracteres'),
            const Gap(32),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                  sections: [
                    PieChartSectionData(
                      color: StyleConstants.tertiaryColor,
                      value: reportStore.lettersPercentage,
                      title: '${reportStore.lettersPercentage.toInt()}%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
                    ),
                    PieChartSectionData(
                      color: StyleConstants.quartaryColor,
                      value: reportStore.numbersPercentage,
                      title: '${reportStore.numbersPercentage.toInt()}%',
                      radius: 100,
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReportChartCaption(
                  text: 'Caracteres letras',
                  color: StyleConstants.tertiaryColor,
                  count: reportStore.lettersCount,
                ),
                const SizedBox(height: 16),
                ReportChartCaption(
                  text: 'Caracteres números',
                  color: StyleConstants.quartaryColor,
                  count: reportStore.numbersCount,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
