import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'Bhumi Aqiel Magrabhi',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.green,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.arrow_circle_right, color: Colors.white),
                          SizedBox(height: 16),
                          Text(
                            'Superbank\nSet up now',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(Icons.add_circle, color: Colors.teal),
                          SizedBox(height: 16),
                          Text(
                            'Add payment\nmethod',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: const [
                          Icon(Icons.group, color: Colors.teal),
                          SizedBox(height: 8),
                          Text(
                            'Set up Grab for Family',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: const [
                          Icon(Icons.business_center, color: Colors.orange),
                          SizedBox(height: 8),
                          Text(
                            'View Grab for Business',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            const Text(
              'For more value',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              title: Text('GrabRewards'),
              trailing: Text(
                '0 OVO Points >',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              title: Text('Subscriptions'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const ListTile(
              title: Text('Challenges'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),

            const SizedBox(height: 16),
            const Text(
              'General',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const ListTile(
              title: Text('Favourites'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const ListTile(
              title: Text('Dietary preferences'),
              trailing: Text('New >', style: TextStyle(color: Colors.red)),
            ),
            const ListTile(
              title: Text('Payment Methods'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const ListTile(
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
