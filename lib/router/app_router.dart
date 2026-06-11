import 'package:flutter2/features/app/screens/home_screen.dart';
import 'package:flutter2/features/app/screens/page_names.dart';
import 'package:flutter2/features/lesson_11/presentation/screens/homework_11_main.dart';
import 'package:flutter2/features/lesson_11/presentation/screens/subtask_1_screen.dart';
import 'package:flutter2/features/lesson_11/presentation/screens/subtask_2_screen.dart';
import 'package:flutter2/features/lesson_11/presentation/screens/subtask_3_screen.dart';
import 'package:flutter2/features/lesson_11/presentation/screens/subtask_4_screen.dart';
import 'package:flutter2/features/lesson_11/presentation/screens/subtask_5_screen.dart';
import 'package:flutter2/features/lesson_12/presentation/screens/homework_12_main.dart';
import 'package:flutter2/features/lesson_12/presentation/screens/new_page.dart';
import 'package:flutter2/features/lesson_13/presentation/screens/homework_13_main.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/homework_bloc/counter_bloc.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/homework_bloc/homework_bloc_screen.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/homework_cubit/counter_cubit.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/homework_cubit/homework_cubit_screen.dart';
import 'package:flutter2/features/lesson_18/presentation/screens/state_management_base_screen.dart';
import 'package:flutter2/features/lesson_19/presentation/bloc/rate_bloc.dart';
import 'package:flutter2/features/lesson_19/presentation/screens/rate_app_screen.dart';
import 'package:flutter2/features/lesson_19/presentation/screens/rate_screen.dart';
import 'package:flutter2/features/lesson_21/presentation/screens/homework_ball_animation.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/data/repository/fake_user_repository.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/presentation/cubit/user_profile_cubit.dart';
import 'package:flutter2/features/lesson_22/error_handling_homework/presentation/ui/screens/user_profile_homework_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: ScreenNames.home,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'lesson_11',
          name: ScreenNames.lesson_11,
          builder: (context, state) => const Homework11Main(),
          routes: [
            GoRoute(
              path: 'subtask_1',
              name: ScreenNames.subtask_1,
              builder: (context, state) => const Subtask1Screen(),
              routes: [],
            ),
            GoRoute(
              path: 'subtask_2',
              name: ScreenNames.subtask_2,
              builder: (context, state) => const Subtask2Screen(),
              routes: [],
            ),
            GoRoute(
              path: 'subtask_3',
              name: ScreenNames.subtask_3,
              builder: (context, state) => const Subtask3Screen(),
              routes: [],
            ),
            GoRoute(
              path: 'subtask_4',
              name: ScreenNames.subtask_4,
              builder: (context, state) => const Subtask4Screen(),
              routes: [],
            ),
            GoRoute(
              path: 'subtask_5',
              name: ScreenNames.subtask_5,
              builder: (context, state) => const Subtask5Screen(),
              routes: [],
            ),
          ],
        ),
        GoRoute(
          path: 'lesson_12',
          name: ScreenNames.lesson_12,
          builder: (context, state) => const Homework12Main(),
          routes: [
            GoRoute(
              path: 'assessment',
              name: ScreenNames.assessment,
              builder: (context, state) => const NewPageScreen(),
              routes: [],
            ),
          ],
        ),
        GoRoute(
          path: 'lesson_13',
          name: ScreenNames.lesson_13,
          builder: (context, state) => const Homework13Main(),
          routes: [],
        ),
        GoRoute(
          path: 'lesson_18',
          name: ScreenNames.lesson_18,
          builder: (context, state) => const StateManagementBaseScreen(),
          routes: [
            GoRoute(
              path: 'bloc_counter_example',
              name: ScreenNames.blocCounterExample,
              builder: (context, state) => BlocProvider(
                create: (context) => CounterBloc(),
                child: const HomeworkBlocScreen(),
              ),
              routes: [],
            ),
            GoRoute(
              path: 'cubit_counter_example',
              name: ScreenNames.cubitCounterExample,
              builder: (context, state) => BlocProvider(
                create: (context) => CounterCubit(),
                child: const HomeworkCubitScreen(),
              ),
              routes: [],
            ),
          ],
        ),
        GoRoute(
          path: 'lesson_19',
          name: ScreenNames.lesson_19,
          builder: (context, state) => const RateAppScreen(),
          routes: [
            GoRoute(
              path: 'rate_screen',
              name: ScreenNames.rateScreen,
              builder: (context, state) => BlocProvider(
                create: (context) => RateFormBloc(),
                child: const RateScreen(),
              ),
              routes: [],
            ),
          ],
        ),
        GoRoute(
          path: 'lesson_21',
          name: ScreenNames.lesson_21,
          builder: (context, state) => const HomeworkBallAnimation(),
          routes: [],
        ),
        GoRoute(
          path: 'lesson_22',
          name: ScreenNames.lesson_22,
          // builder: (context, state) => const UserProfileHomeworkScreen(),
          builder: (context, state) => BlocProvider(
            create: (context) =>
                UserProfileCubit(FakeUserRepository())..loadUserProfile(),
            child: const UserProfileHomeworkScreen(),
          ),
          routes: [],
        ),
      ],
    ),
  ],
);
