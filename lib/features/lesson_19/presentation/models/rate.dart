import 'package:formz/formz.dart';

enum RatingValidationError { empty }

class Rating extends FormzInput<int, RatingValidationError> {
  const Rating.pure() : super.pure(0);

  const Rating.dirty([super.value = 0]) : super.dirty();

  @override
  RatingValidationError? validator(int value) {
    return value > 0 ? null : RatingValidationError.empty;
  }
}
