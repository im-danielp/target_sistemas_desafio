import 'package:flutter/material.dart';
import 'package:target/core/constants/style_constants.dart';

class ReportNoData extends StatelessWidget {
  const ReportNoData({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 15,
          children: [
            Icon(
              Icons.add_chart_rounded,
              color: StyleConstants.textLowOpacityColor,
            ),
            Text(
              'É necessário ter ao menos um dado inserido para apresentação do gráfico.\n\nVá até a tela central e faça um registro!',
              textAlign: TextAlign.center,
              style: TextStyle(color: StyleConstants.textLowOpacityColor),
            ),
          ],
        ),
      ),
    );
  }
}
