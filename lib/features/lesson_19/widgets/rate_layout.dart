import 'package:flutter/material.dart';
import 'package:flutter2/features/lesson_19/presentation/bloc/rate_bloc.dart';
import 'package:flutter2/features/lesson_19/widgets/stars.widget.dart';
import 'package:flutter2/features/lesson_19/widgets/toolbar.widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';

class RateLayout extends StatelessWidget {
  const RateLayout({
    required this.commentController,
    required this.focusComment,
    required this.rateState,
    super.key,
  });

  final TextEditingController commentController;
  final FocusNode focusComment;
  final RateFormState rateState;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(top: 100),
          decoration: BoxDecoration(
            color: Color.fromRGBO(96, 186, 255, 0.7),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          padding: EdgeInsets.only(top: 32, right: 16, bottom: 32, left: 16),
          child: Column(
            children: [
              Text(
                !rateState.status.isSuccess
                    ? 'How would you rate the app?'
                    : 'You rated the app',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 24),
              Stars(
                starCount: 5,
                selectedRating: rateState.selectedStars.value,
                onTapStars: (value) =>
                    !rateState.status.isInProgress &&
                        !rateState.status.isSuccess
                    ? context.read<RateFormBloc>().add(
                        StarsChanged(selectedStars: value),
                      )
                    : null,
              ),
              SizedBox(height: 24),
              TextFormField(
                controller: commentController,
                focusNode: focusComment,
                enabled:
                    !rateState.status.isInProgress &&
                    !rateState.status.isSuccess,
                minLines: 6,
                maxLines: null,
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(27, 61, 112, 1.0),
                ),
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: rateState.status.isSuccess
                      ? Colors.grey.shade300
                      : Colors.white,
                  alignLabelWithHint: true,
                  hintText: 'Add a comment',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: rateState.status.isSuccess
                          ? Colors.grey.shade300
                          : Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(27, 61, 112, 1.0),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  contentPadding: EdgeInsets.all(12.0),
                  errorMaxLines: 2,
                  errorText: rateState.comment.displayError != null
                      ? '''Comment must be at least 3 characters'''
                      : null,
                ),
                onChanged: (value) {
                  context.read<RateFormBloc>().add(
                    CommentChanged(comment: value),
                  );
                },
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 24),
              Toolbar(rateState: rateState),
            ],
          ),
        ),
      ],
    );
  }
}
