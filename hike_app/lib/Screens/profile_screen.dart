import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Profile"),
          centerTitle: true,
          backgroundColor: const Color(0xFF8B5E3C),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildProfileHeader(),
              const SizedBox(height: 10),
              const TabBar(
                labelColor: Color(0xFF8B5E3C),
                unselectedLabelColor: Colors.grey,
                indicatorColor: Color(0xFF8B5E3C),
                tabs: [
                  Tab(icon: Icon(Icons.grid_on), text: "Posts"),
                  Tab(icon: Icon(Icons.hiking), text: "Past Hikes"),
                ],
              ),
              SizedBox(
                height: 600, // enough space for both tabs
                child: const TabBarView(
                  children: [_PostsGrid(), _PastHikesList()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1502685104226-ee32379fefbe",
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Sarah Walker",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Adventure seeker | Mountain climber | Nature lover",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    _ProfileStat("Hikes", "24"),
                    _ProfileStat("Followers", "1.2k"),
                    _ProfileStat("Following", "180"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ------------------ POSTS GRID ------------------
class _PostsGrid extends StatelessWidget {
  const _PostsGrid();

  @override
  Widget build(BuildContext context) {
    final posts = [
      "https://images.unsplash.com/photo-1500534314209-a25ddb2bd429",
      "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
      "https://images.unsplash.com/photo-1523413651479-597eb2da0ad6",
      "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
      "https://images.unsplash.com/photo-1483794344563-d27a8d18014e",
      "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
    ];

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(posts[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

// ------------------ PAST HIKES LIST ------------------
class _PastHikesList extends StatelessWidget {
  const _PastHikesList();

  @override
  Widget build(BuildContext context) {
    final hikes = [
      {
        "title": "Mountain Escape",
        "date": "Sep 20, 2025",
        "image": "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
      },
      {
        "title": "Forest Walk",
        "date": "Oct 5, 2025",
        "image": "https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0",
      },
      {
        "title": "Desert Trek",
        "date": "Nov 12, 2025",
        "image": "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: hikes.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Image.network(
                hikes[index]["image"]!,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hikes[index]["title"]!,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        hikes[index]["date"]!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// ------------------ PROFILE STAT WIDGET ------------------
class _ProfileStat extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileStat(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}
