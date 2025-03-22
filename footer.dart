import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200], // Light grey background
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Made by 😊 Team Techtroops',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700], // Dark grey text
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 4), // Spacing between lines
            Text(
              'Ritika Sarah Aman Ashutosh ',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[600], // Slightly lighter grey text
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}