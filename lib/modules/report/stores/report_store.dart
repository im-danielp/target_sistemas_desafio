import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:target/core/locator/locator.dart';
import 'package:target/core/stores/device_store.dart';
import 'package:target/modules/infos/controllers/infos_constants.dart';
import 'package:target/modules/infos/stores/info_store.dart';

part 'report_store.g.dart';

class ReportStore = ReportStoreBase with _$ReportStore;

abstract class ReportStoreBase with Store {
  static final infoStore = getIt<InfoStore>();
  static final deviceStore = getIt<DeviceStore>();

  static final maxWidth = deviceStore.screenWidth;
  static final regExpNumber = RegExp(r'\d');
  static final regExpLetter = RegExp(r'\p{L}', unicode: true);

  int linesCount = 0;
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

  void incrementLinesCount(String newDescription) {
    final textPainter = TextPainter(
      text: TextSpan(text: newDescription, style: InfosConstants.textStyle),
      textDirection: TextDirection.ltr,
      maxLines: null,
    )..layout(maxWidth: maxWidth);

    linesCount += textPainter.computeLineMetrics().length;
  }

  void decrementLinesCount(String oldDescription) {
    final textPainter = TextPainter(
      text: TextSpan(text: oldDescription, style: InfosConstants.textStyle),
      textDirection: TextDirection.ltr,
      maxLines: null,
    )..layout(maxWidth: maxWidth);

    linesCount -= textPainter.computeLineMetrics().length;
  }

  void incrementEditsCount() {
    editsCount++;
  }

  void teste() {
    log('linesCount: $linesCount');
    log('editsCount: $editsCount');
    log('numbersCount: $numbersCount');
    log('lettersCount: $lettersCount');
    log('totalCharacters: ${numbersCount + lettersCount}\n\n');
  }
}
