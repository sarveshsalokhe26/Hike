import 'package:flutter/material.dart';
import 'profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const _HomeScreen(),
    const _HikesScreen(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF8B5E3C),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.terrain), label: 'Hikes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// ---------------------- HOME SCREEN ----------------------
class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hero Banner
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.4), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              const Positioned(
                left: 20,
                bottom: 20,
                child: Text(
                  "Explore the Outdoors",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Quick Actions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _quickAction(Icons.search, "Find Hikes"),
                _quickAction(Icons.group, "Communities"),
                _quickAction(Icons.photo, "Post Memories"),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // Upcoming Hikes Section
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Upcoming Hikes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10),

          SizedBox(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _hikeCard(
                  "Mountain Escape",
                  "Sep 20, 2025",
                  "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
                ),
                _hikeCard(
                  "Forest Walk",
                  "Oct 5, 2025",
                  "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
                ),
                _hikeCard(
                  "Desert Trek",
                  "Nov 12, 2025",
                  "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _quickAction(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF8B5E3C),
          radius: 26,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  static Widget _hikeCard(String title, String date, String imageUrl) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.5), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding: const EdgeInsets.all(12),
        alignment: Alignment.bottomLeft,
        child: Text(
          "$title\n$date",
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}

// ---------------------- HIKES SCREEN ----------------------
class _HikesScreen extends StatelessWidget {
  const _HikesScreen();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Your upcoming and past hikes will appear here.",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }
}
