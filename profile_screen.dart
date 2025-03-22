import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateProfileScreen()),
                );
              },
              child: const Text('Create Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Currently Enrolled'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Active Scholarship'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }
}