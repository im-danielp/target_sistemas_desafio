import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/core/stores/device_store.dart';
import 'package:target/modules/report/stores/report_store.dart';
import 'package:target/modules/report/widgets/report_chart_caption.dart';

class ReportChart extends StatelessWidget {
  final ReportStore reportStore;

  ReportChart({super.key, required this.reportStore});

  final deviceStore = getIt<DeviceStore>();

  @override
  Widget build(BuildContext context) {
    final maxHeight = deviceStore.screenHeight;

    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(16, 16, 16, maxHeight * 0.05),
        decoration: BoxDecoration(
          border: Border.all(color: StyleConstants.outlineBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Comparativo entre caracteres'),
            Expanded(
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 0,
                  sections: [
                    PieChartSectionData(
                      color: StyleConstants.tertiaryColor,
                      value: reportStore.lettersPercentage,
                      title: '${reportStore.lettersPercentage.toInt()}%',
                      borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
                      radius: maxHeight * 0.11,
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    PieChartSectionData(
                      color: StyleConstants.quartaryColor,
                      value: reportStore.numbersPercentage,
                      title: '${reportStore.numbersPercentage.toInt()}%',
                      borderSide: BorderSide(color: StyleConstants.outlineBorderColor),
                      radius: maxHeight * 0.11,
                      titleStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
