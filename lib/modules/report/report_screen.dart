import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/modules/report/stores/report_store.dart';
import 'package:target/modules/report/widgets/report_chart.dart';
import 'package:target/modules/report/widgets/report_line.dart';
import 'package:target/modules/report/widgets/report_no_data.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  static final reportStore = getIt<ReportStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Column(
          spacing: 20,
          children: [
            Text('Relatório', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ReportLine(
              title: 'Quantidade de linhas',
              count: reportStore.linesCount.toString(),
            ),
            ReportLine(
              title: 'Quantidade de edições',
              count: reportStore.editsCount.toString(),
            ),
            ReportLine(
              title: 'Quantidade de caracteres',
              count: '${reportStore.numbersCount + reportStore.lettersCount}',
            ),
            Visibility(
              visible: reportStore.linesCount > 0,
              replacement: ReportNoData(),
              child: ReportChart(reportStore: reportStore),
            ),
          ],
        ),
      ),
    );
  }
}
