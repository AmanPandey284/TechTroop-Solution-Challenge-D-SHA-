import 'package:flutter/material.dart';

class ScholarshipsScreen extends StatelessWidget {
  const ScholarshipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scholarships'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          ScholarshipItem(
            title: 'Fulbright Scholarship',
            description: 'A prestigious scholarship for international students to study in the USA.',
          ),
          ScholarshipItem(
            title: 'Chevening Scholarship',
            description: 'UK government scholarship for future leaders to study in the UK.',
          ),
          ScholarshipItem(
            title: 'Erasmus Mundus',
            description: 'European Union scholarship for global students to study in Europe.',
          ),
        ],
      ),
    );
  }
}

class ScholarshipItem extends StatelessWidget {
  final String title;
  final String description;

  const ScholarshipItem({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(description),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Apply Now'),
                    content: const Text('The form is yet to be released. Patience is key to success!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Apply Now'),
            ),
          ],
        ),
      ),
    );
  }
}