// pages/match_the_following_test_page.dart

import 'package:flutter/material.dart';
import 'package:my_app/widgets/matching_item_column.dart';
import 'package:my_app/widgets/matching_item.dart';

class MatchTheFollowingTestPage extends StatelessWidget {
  final String lessonName;

  const MatchTheFollowingTestPage({super.key, required this.lessonName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lessonName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Match The Following Test',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: MatchingItemColumn(
                      items: [
                        MatchingItem(text: 'Phrase 1'),
                        MatchingItem(text: 'Phrase 2'),
                        // Add more phrases as needed
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: MatchingItemColumn(
                      items: [
                        MatchingItem(text: 'Translation 1'),
                        MatchingItem(text: 'Translation 2'),
                        // Add more translations as needed
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
