part of 'rate_bloc.dart';

sealed class RateEvent extends Equatable {
  const RateEvent();

  @override
  List<Object> get props => [];
}

final class StarsChanged extends RateEvent {
  const StarsChanged({required this.selectedStars});

  final int selectedStars;

  @override
  List<Object> get props => [selectedStars];
}

final class StarsUnfocused extends RateEvent {}

final class CommentChanged extends RateEvent {
  const CommentChanged({required this.comment});

  final String comment;

  @override
  List<Object> get props => [comment];
}

final class CommentUnfocused extends RateEvent {}

final class RateSubmitted extends RateEvent {}

final class RateResetted extends RateEvent {}
