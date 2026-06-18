import 'package:equatable/equatable.dart';

class ChequeEvent extends Equatable {
  const ChequeEvent();

  @override
  List<Object?> get props => [];
}

class ChequeRequested extends ChequeEvent {
  const ChequeRequested();
}
