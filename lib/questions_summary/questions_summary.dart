import 'package:first_app/questions_summary/question_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (summaryItem) {
              return SummaryItem(summaryItem);
            },
          ).toList(),
        ),
      ),
    );
  }
}
