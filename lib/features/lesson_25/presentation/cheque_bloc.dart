import 'package:flutter2/features/lesson_25/presentation/cheque_event.dart';
import 'package:flutter2/features/lesson_25/presentation/cheque_state.dart';
import 'package:flutter2/features/lesson_25/repository/cheque_repository.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ChequeBloc extends Bloc<ChequeEvent, ChequeState> {
  ChequeBloc(this._repository) : super(const ChequeInitial()) {
    on<ChequeRequested>((event, emit) async {
      emit(const ChequeLoading());

      try {
        final cheque = await _repository.loadCheque();

        emit(ChequeLoaded(cheque));
      } catch (e) {
        emit(ChequeError(e.toString()));
      }
    });
  }

  final ChequeRepository _repository;
}
