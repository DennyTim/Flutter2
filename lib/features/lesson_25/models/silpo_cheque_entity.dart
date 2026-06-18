import 'package:flutter2/features/lesson_25/models/silpo_cheque_dto.dart';

class SilpoChequeEntity {
  SilpoChequeEntity({
    required this.chequeId,
    required this.totalAmount,
    required this.items,
    required this.prediction,
  });

  SilpoChequeEntity.fromDto(SilpoChequeDto dto)
      : chequeId = dto.chequeHeader?.chequeId ?? 0,
        totalAmount = dto.chequeHeader?.sumReg ?? 0,
        items = (dto.chequeLines ?? [])
            .map((line) => line.lagerNameUA ?? '')
            .toList(),
        prediction = dto.chPrediction ?? '';

  final int chequeId;
  final double totalAmount;
  final List<String> items;
  final String prediction;
}
