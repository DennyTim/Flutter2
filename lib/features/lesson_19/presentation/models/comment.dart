import 'package:formz/formz.dart';

enum CommentValidationError { tooShort }

class Comment extends FormzInput<String, CommentValidationError> {
  const Comment.pure() : super.pure('');

  const Comment.dirty([super.value = '']) : super.dirty();

  @override
  CommentValidationError? validator(String value) {
    return value.length >= 3 ? null : CommentValidationError.tooShort;
  }
}
