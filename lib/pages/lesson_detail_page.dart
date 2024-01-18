// pages/lesson_detail_page.dart

import 'package:flutter/material.dart';
import 'package:my_app/pages/mcq_test_page.dart';
import 'package:my_app/widgets/bottom_navigation_bar.dart';
import 'package:my_app/widgets/lesson_detail_tile.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:my_app/pages/profile_page.dart';

class LessonDetailPage extends StatelessWidget {
  final String lessonName;
  final String levelName;

  const LessonDetailPage({
    Key? key,
    required this.lessonName,
    required this.levelName,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lessonName),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0, // Remove the shadow
        centerTitle: true,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: 0, // Set the appropriate index for this page
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home Page
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const HomePage()),
            );
          } else if (index == 1) {
            // Navigate to Profile Page
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => ProfilePage()),
            );
          }
        },
      ),
      body: Builder(
        builder: (BuildContext context) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$lessonName Guide',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10, // Adjust the number of tiles
                      itemBuilder: (context, index) {
                        return LessonDetailTile(
                          phrase: 'Phrase ${index + 1}',
                          pronunciation: 'Pronunciation ${index + 1}',
                          translation: 'Translation ${index + 1}',
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MCQTestPage(
                              lessonName: lessonName,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 20,
                        ),
                        child: Text(
                          'Take Test',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
