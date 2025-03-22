import 'package:flutter/material.dart';

class StayTunedPage extends StatelessWidget {
  const StayTunedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stay Tuned'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'STAY TUNED: WORK HARD DAWN TO DUSK',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}