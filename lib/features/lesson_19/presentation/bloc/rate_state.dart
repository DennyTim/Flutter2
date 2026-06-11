part of 'rate_bloc.dart';

final class RateFormState extends Equatable {
  const RateFormState({
    this.selectedStars = const Rating.pure(),
    this.comment = const Comment.pure(),
    this.isValid = false,
    this.isReset = true,
    this.status = FormzSubmissionStatus.initial,
  });

  final Rating selectedStars;
  final Comment comment;
  final bool isValid;
  final bool isReset;
  final FormzSubmissionStatus status;

  RateFormState copyWith({
    Rating? selectedStars,
    Comment? comment,
    bool? isValid,
    bool? isReset,
    FormzSubmissionStatus? status,
  }) {
    return RateFormState(
      selectedStars: selectedStars ?? this.selectedStars,
      comment: comment ?? this.comment,
      isValid: isValid ?? this.isValid,
      isReset: isReset ?? this.isReset,
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [selectedStars, comment, status];
}
