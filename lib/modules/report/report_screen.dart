import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/modules/report/stores/report_store.dart';
import 'package:target/modules/report/widgets/report_chart.dart';
import 'package:target/modules/report/widgets/report_line.dart';
import 'package:target/modules/report/widgets/report_no_data.dart';

class ReportScreen extends StatelessWidget {
  ReportScreen({super.key});

  final reportStore = getIt<ReportStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
          ReportLine(
            title: 'Quantidade de linhas',
            count: Observer(builder: (context) => Text(reportStore.linesCount.toString())),
          ),
          ReportLine(
            title: 'Quantidade de edições',
            count: Observer(builder: (context) => Text(reportStore.editsCount.toString())),
          ),
          ReportLine(
            title: 'Quantidade de caracteres',
            count: Observer(
              builder: (context) => Text('${reportStore.numbersCount + reportStore.lettersCount}'),
            ),
          ),
          Observer(
            builder: (_) {
              return Visibility(
                visible: reportStore.linesCount > 0,
                replacement: ReportNoData(),
                child: ReportChart(reportStore: reportStore),
              );
            },
          ),
        ],
      ),
    );
  }
}
