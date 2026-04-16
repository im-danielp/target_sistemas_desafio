import 'dart:developer';

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

  void incrementCharactersCount(String newDescription) {
    final regExpNumber = RegExp(r'\d');
    characterNumbersCount += regExpNumber.allMatches(newDescription).length;

    final regExpLetter = RegExp(r'\p{L}', unicode: true);
    characterLettersCount += regExpLetter.allMatches(newDescription).length;

    totalCharacterCount = characterNumbersCount + characterLettersCount;

    log('$characterNumbersCount | $characterLettersCount | $totalCharacterCount');
  }

  void decrementCharactersCount(String newDescription) {
    final regExpNumber = RegExp(r'\d');
    characterNumbersCount -= regExpNumber.allMatches(newDescription).length;

    final regExpLetter = RegExp(r'\p{L}', unicode: true);
    characterLettersCount -= regExpLetter.allMatches(newDescription).length;

    totalCharacterCount = characterNumbersCount + characterLettersCount;

    log('$characterNumbersCount | $characterLettersCount | $totalCharacterCount');
  }

  void incrementEditsCount() {
    editsCount++;
  }
}
