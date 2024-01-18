// pages/mcq_test_page.dart

import 'package:flutter/material.dart';
import 'package:my_app/widgets/mcq_option.dart';

class MCQTestPage extends StatefulWidget {
  final String lessonName;

  const MCQTestPage({super.key, required this.lessonName});

  @override
  _MCQTestPageState createState() => _MCQTestPageState();
}

class _MCQTestPageState extends State<MCQTestPage> {
  int selectedOptionIndex = -1; // Initially no option selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.lessonName} - MCQ Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Multiple Choice Questions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 20),
            MCQOption(
              option: 'Option A',
              isSelected: selectedOptionIndex == 0,
              onTap: () {
                setState(() {
                  selectedOptionIndex = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            MCQOption(
              option: 'Option B',
              isSelected: selectedOptionIndex == 1,
              onTap: () {
                setState(() {
                  selectedOptionIndex = 1;
                });
              },
            ),
            // Add more options as needed
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle submitting the answer or navigate to the next question
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
