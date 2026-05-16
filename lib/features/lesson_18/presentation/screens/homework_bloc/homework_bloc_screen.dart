import 'package:flutter/material.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/homework_bloc/counter_bloc.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/homework_bloc/counter_events.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/homework_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeworkBlocScreen extends StatelessWidget {
  const HomeworkBlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Counter Example'),
        backgroundColor: Colors.green.shade100,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You have pushed the button this many times:'),
                Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () => counterBloc.add(Decrement()),
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            heroTag: null,
            onPressed: () => counterBloc.add(Increment()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
