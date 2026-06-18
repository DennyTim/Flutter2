import 'package:equatable/equatable.dart';
import 'package:flutter2/features/lesson_25/models/silpo_cheque_entity.dart';

sealed class ChequeState extends Equatable {
  const ChequeState();

  @override
  List<Object?> get props => [];
}

class ChequeInitial extends ChequeState {
  const ChequeInitial();
}

class ChequeLoading extends ChequeState {
  const ChequeLoading();
}

class ChequeLoaded extends ChequeState {
  const ChequeLoaded(this.cheque);

  final SilpoChequeEntity cheque;

  @override
  List<Object?> get props => [cheque];
}

class ChequeError extends ChequeState {
  const ChequeError(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
