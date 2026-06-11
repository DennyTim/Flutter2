import 'package:flutter/material.dart';
import 'package:flutter2/features/lesson_19/presentation/bloc/rate_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:google_fonts/google_fonts.dart';

enum ButtonType {
  submit,
  reset,
  finish,
  submitInProgress,
  resetInactive,
  finishInactive,
}

class Toolbar extends StatelessWidget {
  const Toolbar({required this.rateState, super.key});

  final RateFormState rateState;

  ButtonStyle _getButtonStyle(ButtonType type) {
    return switch (type) {
      ButtonType.reset || ButtonType.resetInactive => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        shadowColor: Colors.black,
        backgroundColor: Color.fromRGBO(65, 166, 244, 1.0),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      ),
      ButtonType.submit ||
      ButtonType.submitInProgress => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        shadowColor: Colors.black,
        backgroundColor: Color.fromRGBO(27, 61, 112, 1.0),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      ),
      ButtonType.finish ||
      ButtonType.finishInactive => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 4,
        shadowColor: Colors.black,
        backgroundColor: Color.fromRGBO(27, 61, 112, 1.0),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      ),
    };
  }

  VoidCallback? _getButtonHandler(
    BuildContext context,
    ButtonType type,
    bool isEnabled,
  ) {
    if (!isEnabled) return null;

    final bloc = context.read<RateFormBloc>();

    final cb = switch (type) {
      ButtonType.reset => () => bloc.add(RateResetted()),
      ButtonType.submit => () => bloc.add(RateSubmitted()),
      ButtonType.finish => () => bloc.add(RateResetted()),
      ButtonType.submitInProgress => null,
      ButtonType.resetInactive => null,
      ButtonType.finishInactive => null,
    };

    return cb;
  }

  Widget _getButtonContent(BuildContext context, ButtonType type) {
    return switch (type) {
      ButtonType.reset || ButtonType.resetInactive => Row(
        children: [
          Icon(Icons.refresh),
          SizedBox(width: 12),
          Text(
            'Reset rating',
            style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      ButtonType.submit => Text(
        'Submit rating',
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      ButtonType.finish || ButtonType.finishInactive => Text(
        'Rate again',
        style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      ButtonType.submitInProgress => SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
      ),
    };
  }

  Widget _getButton(BuildContext context, ButtonType type, bool isDisabled) {
    return switch (type) {
      ButtonType.resetInactive => Expanded(
        child: ElevatedButton(
          style: _getButtonStyle(ButtonType.resetInactive),
          onPressed: _getButtonHandler(
            context,
            ButtonType.resetInactive,
            isDisabled,
          ),
          child: _getButtonContent(context, ButtonType.resetInactive),
        ),
      ),
      ButtonType.reset => Expanded(
        child: ElevatedButton(
          style: _getButtonStyle(ButtonType.reset),
          onPressed: _getButtonHandler(context, ButtonType.reset, isDisabled),
          child: _getButtonContent(context, ButtonType.reset),
        ),
      ),
      ButtonType.submit => Expanded(
        child: ElevatedButton(
          style: _getButtonStyle(ButtonType.submit),
          onPressed: _getButtonHandler(context, ButtonType.submit, isDisabled),
          child: _getButtonContent(context, ButtonType.submit),
        ),
      ),
      ButtonType.submitInProgress => Expanded(
        child: ElevatedButton(
          style: _getButtonStyle(ButtonType.submitInProgress),
          onPressed: _getButtonHandler(
            context,
            ButtonType.submitInProgress,
            isDisabled,
          ),
          child: _getButtonContent(context, ButtonType.submitInProgress),
        ),
      ),
      ButtonType.finish => Expanded(
        child: ElevatedButton(
          style: _getButtonStyle(ButtonType.finish),
          onPressed: _getButtonHandler(context, ButtonType.finish, isDisabled),
          child: _getButtonContent(context, ButtonType.finish),
        ),
      ),
      ButtonType.finishInactive => Expanded(
        child: ElevatedButton(
          style: _getButtonStyle(ButtonType.finish),
          onPressed: _getButtonHandler(context, ButtonType.finish, isDisabled),
          child: _getButtonContent(context, ButtonType.finish),
        ),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: rateState.status.isSuccess
          ? [_getButton(context, ButtonType.finish, true)]
          : [
              rateState.status.isInProgress
                  ? _getButton(context, ButtonType.submitInProgress, true)
                  : _getButton(context, ButtonType.submit, rateState.isValid),
              SizedBox(width: 12),
              rateState.status.isInProgress
                  ? _getButton(context, ButtonType.resetInactive, false)
                  : _getButton(context, ButtonType.reset, !rateState.isReset),
            ],
    );
  }
}
