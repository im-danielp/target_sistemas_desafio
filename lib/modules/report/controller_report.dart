import 'package:flutter/cupertino.dart';

class ControllerReport {
  int linesCount = 0;
  int editsCount = 0;
  int characterNumbersCount = 0;
  int characterLettersCount = 0;
  int totalCharacterCount = 0;

  void updateLinesCount(BuildContext context, String newDescription) {
    final size = MediaQuery.sizeOf(context);

    final textPainter = TextPainter(
      text: TextSpan(text: newDescription),
      textDirection: TextDirection.ltr,
      maxLines: null,
    )..layout(maxWidth: size.width);

    linesCount = textPainter.computeLineMetrics().length;
  }

  void updateEditsCount() {
    editsCount++;
  }

  void updateCharactersCount(String newDescription) {}
}
