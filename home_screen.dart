import 'package:flutter/material.dart';
import 'package:myapp/scholarships_screen.dart';
import 'package:myapp/stay_tuned_page.dart';
import 'package:provider/provider.dart';
import 'login_screen.dart';
import 'app_theme.dart';
import 'theme_switcher.dart';
import 'footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/orange_dove.png',
              width: 40,
              height: 40,
            ),
            const SizedBox(width: 10),
            const Text(
              'D!SHA',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          const ThemeSwitcher(),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Navigate to LoginScreen on logout
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BannerSection(),
            const SizedBox(height: 20),
            const DashboardSection(),
            const SizedBox(height: 20),
            const ScholarshipsButton(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.deepPurple,
            Colors.teal,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Column(
        children: [
          Text(
            'Dive into Success',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Your future is bright!',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DashboardSection extends StatefulWidget {
  const DashboardSection({super.key});

  @override
  _DashboardSectionState createState() => _DashboardSectionState();
}

class _DashboardSectionState extends State<DashboardSection> {
  bool _isHovered = false;

  void _updateHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Dashboard',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            children: [
              _buildDashboardCard('Courses', Icons.school, Colors.deepPurple),
              _buildDashboardCard('Industrial Skills', Icons.work, Colors.teal),
              _buildDashboardCard('Personality Development', Icons.people, Colors.deepPurple),
              _buildDashboardCard('Financial Planner', Icons.attach_money, Colors.teal),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDashboardCard(String title, IconData icon, Color color) {
    return MouseRegion(
      onEnter: (_) => _updateHover(true),
      onExit: (_) => _updateHover(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: _isHovered ? color.withOpacity(0.1) : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            // Navigate to a new page with the message
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StayTunedPage(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 40, color: color),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ScholarshipsButton extends StatelessWidget {
  const ScholarshipsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScholarshipsScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        ),
        child: const Text('Scholarships'),
      ),
    );
  }
}