import 'package:flutter/material.dart';
import 'package:flutter2/features/lesson_19/presentation/bloc/rate_bloc.dart';
import 'package:flutter2/features/lesson_19/widgets/interactive_logo.widget.dart';
import 'package:flutter2/features/lesson_19/widgets/rate_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RateScreen extends StatefulWidget {
  const RateScreen({super.key});

  @override
  State<RateScreen> createState() => _RateScreenState();
}

class _RateScreenState extends State<RateScreen> {
  final _commentFocusNode = FocusNode();
  final _commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _commentFocusNode.dispose();
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter Lab',
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(27, 61, 112, 1.0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => context.pop(),
        ),
      ),
      body: BlocConsumer<RateFormBloc, RateFormState>(
        listenWhen: (previous, current) => current.isReset,
        listener: (context, state) {
          _commentFocusNode.unfocus();
          _commentController.clear();
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: DefaultTextStyle(
              style: GoogleFonts.montserrat(fontSize: 16, color: Colors.black),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 28),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(154, 209, 239, 1.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Stack(
                              children: [
                                RateLayout(
                                  commentController: _commentController,
                                  focusComment: _commentFocusNode,
                                  rateState: state,
                                ),
                                MainLogo(logoIndex: state.selectedStars.value),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
