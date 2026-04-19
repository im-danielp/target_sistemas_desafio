import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobx/mobx.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/core/stores/device_store.dart';
import 'package:target/modules/infos/stores/info_store.dart';

part 'report_store.g.dart';

class ReportStore = ReportStoreBase with _$ReportStore;

abstract class ReportStoreBase with Store {
  static final deviceStore = getIt<DeviceStore>();
  final infoStore = getIt<InfoStore>();

  final maxWidth = deviceStore.screenWidth;
  final regExpNumber = RegExp(r'\d');
  final regExpLetter = RegExp(r'\p{L}', unicode: true);

  @observable
  int linesCount = 0;

  @observable
  int editsCount = 0;

  @computed
  int get numbersCount {
    int count = 0;
    for (final info in infoStore.infos) {
      count += regExpNumber.allMatches(info.description).length;
    }
    return count;
  }

  @computed
  int get lettersCount {
    int count = 0;
    for (final info in infoStore.infos) {
      count += regExpLetter.allMatches(info.description).length;
    }
    return count;
  }

  double get lettersPercentage {
    int totalCharacters = lettersCount + numbersCount;
    return (lettersCount * 100) / totalCharacters;
  }

  double get numbersPercentage {
    int totalCharacters = lettersCount + numbersCount;
    return (numbersCount * 100) / totalCharacters;
  }

  @action
  void incrementEditsCount() {
    editsCount++;
  }

  @action
  void incrementLinesCount(String newDescription) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: newDescription,
        style: GoogleFonts.dmSans(fontSize: 14, color: Colors.black),
      ),
      textDirection: TextDirection.ltr,
      maxLines: null,
    )..layout(maxWidth: maxWidth - 185);

    final metrics = textPainter.computeLineMetrics();
    linesCount += metrics.length;
  }

  @action
  void decrementLinesCount(String oldDescription) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: oldDescription,
        style: GoogleFonts.dmSans(fontSize: 14, color: Colors.black),
      ),
      textDirection: TextDirection.ltr,
      maxLines: null,
    )..layout(maxWidth: maxWidth - 185);

    final metrics = textPainter.computeLineMetrics();
    linesCount -= metrics.length;
  }

  /// Ao realizar logout.
  @action
  void resetLinesCount() {
    linesCount = 0;
  }

  @action
  void resetEditsCount() {
    editsCount = 0;
  }
}
