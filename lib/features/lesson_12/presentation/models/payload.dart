

import 'package:flutter2/features/lesson_12/presentation/models/property.model.dart';
import 'package:flutter2/features/lesson_12/presentation/models/widget_item.dart';

final List<WidgetItem> widgetPayload = [
  StarsItem(id: 'stars', starCount: 5, rating: 3),
  SectionItem(id: 'section-1', title: 'Яку оціночку поставите відділам?'),
  CardItem(
    id: 'vypichka',
    title: 'Випічка',
    properties: [
      PropertyModel(
        id: 'vypichka-services',
        title: 'Обслуговування',
        type: 'checkbox',
      ),
      PropertyModel(
        id: 'vypichka-assortment',
        title: 'Асортимент',
        type: 'checkbox',
      ),
      PropertyModel(
        id: 'vypichka-comment',
        title: 'Розкажіть докладніше',
        type: 'text',
      ),
    ],
  ),
  WidgetItem(id: '', type: '', title: ''),
  CardItem(
    id: 'lavka-tradyciy',
    title: 'Лавка Традицій',
    properties: [
      PropertyModel(
        id: 'lavka-tradyciy-services',
        title: 'Обслуговування',
        type: 'checkbox',
      ),
      PropertyModel(
        id: 'lavka-tradyciy-assortment',
        title: 'Асортимент',
        type: 'checkbox',
      ),
      PropertyModel(
        id: 'lavka-tradyciy-comment',
        title: 'Розкажіть докладніше',
        type: 'text',
      ),
    ],
  ),
  FooterItem(
    id: 'footer',
    title: 'Є що додати?',
    placeholder: 'Поділіться загальним враженням',
  ),
];
