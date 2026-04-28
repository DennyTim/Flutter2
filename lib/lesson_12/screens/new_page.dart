import 'package:flutter/material.dart';
import 'package:flutter2/lesson_12/widgets/card-footer.widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/widget_item.dart';
import '../widgets/card.widget.dart';
import '../widgets/section-title.widget.dart';
import '../widgets/stars.widget.dart';
import '../widgets/submit.widget.dart';

class NewPageScreen extends StatelessWidget {
  const NewPageScreen({required this.items, super.key});

  final List<WidgetItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /**
         * scrolledUnderElevation remove shadow from AppBar when scrolling
         * */
        scrolledUnderElevation: 0,
        titleSpacing: -10,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Оцінка візиту до магазину',
          style: GoogleFonts.nunitoSans(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(238, 242, 252, 1.0),
              ),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ...items.map((WidgetItem item) {
                        return switch (item) {
                          StarsItem() => Stars(
                            starCount: item.starCount,
                            rating: item.rating,
                          ),
                          SectionItem() => SectionTitle(title: item.title!),
                          CardItem() => MarkCard(
                            cardTitle: item.title!,
                            propertyLists: item.properties,
                          ),
                          FooterItem() => CardFooter(
                            title: item.title!,
                            placeholder: item.placeholder ?? '',
                          ),
                          _ => SizedBox(height: 10),
                        };
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SubmitButton(btnText: 'Надіслати'),
        ],
      ),
    );
  }
}
