import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter2/features/lesson_19/presentation/models/comment.dart';
import 'package:flutter2/features/lesson_19/presentation/models/rate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

part 'rate_events.dart';
part 'rate_state.dart';

class RateFormBloc extends Bloc<RateEvent, RateFormState> {
  RateFormBloc() : super(const RateFormState()) {
    on<StarsChanged>(_onStarsChanged);
    on<CommentChanged>(_onCommentChanged);
    on<StarsUnfocused>(_onStarsUnfocused);
    on<CommentUnfocused>(_onCommentUnfocused);
    on<RateSubmitted>(_onFormSubmitted);
    on<RateResetted>(_onFormReset);
  }

  Timer? _debounceTimer;

  void _onStarsChanged(StarsChanged event, Emitter<RateFormState> emit) {
    final selectedStars = Rating.dirty(event.selectedStars);
    emit(
      state.copyWith(
        selectedStars: selectedStars,
        isReset: false,
        isValid: Formz.validate([selectedStars, state.comment]),
        status: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _onCommentChanged(
    CommentChanged event,
    Emitter<RateFormState> emit,
  ) async {
    /// Delay before an error occurs while typing::: start
    _debounceTimer?.cancel();

    final completer = Completer<void>();

    _debounceTimer = Timer(
      const Duration(milliseconds: 300),
      completer.complete,
    );

    await completer.future;

    /// Delay before an error occurs while typing::: end

    final comment = Comment.dirty(event.comment);

    emit(
      state.copyWith(
        comment: comment,
        isReset: false,
        isValid: Formz.validate([state.selectedStars, comment]),
        status: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _onStarsUnfocused(StarsUnfocused event, Emitter<RateFormState> emit) {
    final selectedStars = Rating.dirty(state.selectedStars.value);
    emit(
      state.copyWith(
        selectedStars: selectedStars,
        isValid: Formz.validate([selectedStars, state.comment]),
        status: FormzSubmissionStatus.initial,
      ),
    );
  }

  void _onCommentUnfocused(
    CommentUnfocused event,
    Emitter<RateFormState> emit,
  ) {
    final comment = Comment.dirty(state.comment.value);
    emit(
      state.copyWith(
        comment: comment,
        isValid: Formz.validate([state.selectedStars, comment]),
        status: FormzSubmissionStatus.initial,
      ),
    );
  }

  Future<void> _onFormSubmitted(
    RateSubmitted event,
    Emitter<RateFormState> emit,
  ) async {
    final selectedStars = Rating.dirty(state.selectedStars.value);
    final comment = Comment.dirty(state.comment.value);
    emit(
      state.copyWith(
        selectedStars: selectedStars,
        comment: comment,
        isReset: false,
        isValid: Formz.validate([selectedStars, comment]),
        status: FormzSubmissionStatus.initial,
      ),
    );
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    }
  }

  void _onFormReset(RateResetted event, Emitter<RateFormState> emit) {
    emit(RateFormState(isReset: true));
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}
