import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile picture
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_pic.jpg'), // Replace with your image
            ),

            const SizedBox(height: 16),
            // Profile details
            const Text(
              'Lee Jong Hyun',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              '@Corner.Pic_',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            // Bio
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'This is a short bio about yourself. You can add more details about who you are!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            // Contact details
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text('jonghyun629@gmail.com'),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text('+82 10 5686 1483'),
              ],
            ),

            const SizedBox(height: 16),

            // Social media links
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.pink),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Opening Instagram...'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const FaIcon(FontAwesomeIcons.threads, color: Colors.black),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Opening Threads...'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}