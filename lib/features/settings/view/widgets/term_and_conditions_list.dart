import 'package:docshpere/features/settings/view/widgets/terms_and_condition_card.dart';
import 'package:flutter/material.dart';

class TermAndConditionsList extends StatelessWidget {
  const TermAndConditionsList({
    super.key,
    required this.terms,
    required this.searchQuery,
  });

  final List<Map<String, String>> terms;
  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: terms.length,
        itemBuilder: (context, index) {
          final term = terms[index];
          if (searchQuery.isNotEmpty &&
              !term["title"]!.toLowerCase().contains(searchQuery) &&
              !term["content"]!.toLowerCase().contains(searchQuery)) {
            return Container();
          }
          return TermsAndConditionCard(title:  term["title"]!,content:  term["content"]!);
        },
      ),
    );
  }
}
