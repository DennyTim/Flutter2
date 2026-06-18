import 'package:flutter/material.dart';
import 'package:flutter2/features/lesson_25/presentation/cheque_bloc.dart';
import 'package:flutter2/features/lesson_25/presentation/cheque_state.dart';
import 'package:flutter2/features/lesson_25/widgets/card_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homework25Main extends StatelessWidget {
  const Homework25Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Робота з REST API, JSON'),
        backgroundColor: Colors.blue.shade100,
      ),
      body: BlocBuilder<ChequeBloc, ChequeState>(
        builder: (context, state) {
          return switch (state) {
            ChequeInitial() => const SizedBox(),
            ChequeLoading() => const Center(child: CircularProgressIndicator()),
            ChequeLoaded() => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 12),
                  CardField(
                      cardTitle: state.cheque.chequeId,
                      products: state.cheque.items,
                      label: state.cheque.prediction,
                      cardPrice: state.cheque.totalAmount
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            ChequeError() => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text(state.message, textAlign: TextAlign.center)],
              ),
            ),
          };
        },
      ),
    );
  }
}
