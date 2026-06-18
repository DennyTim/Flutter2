import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter2/features/lesson_25/models/silpo_cheque_dto.dart';
import 'package:flutter2/features/lesson_25/models/silpo_cheque_entity.dart';

class ChequeRepository {
  Future<SilpoChequeEntity> loadCheque() async {
    final url = 'assets/json/silpo_cheque_example.json';
    final jsonPayload = await rootBundle.loadString(url);

    final json = jsonDecode(jsonPayload) as Map<String, dynamic>;
    final dto = SilpoChequeDto.fromJson(json);

    return SilpoChequeEntity.fromDto(dto);
  }
}
