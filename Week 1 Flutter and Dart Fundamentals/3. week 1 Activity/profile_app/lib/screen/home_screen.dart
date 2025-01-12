import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfilePage  extends StatelessWidget {
  const ProfilePage ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20.0,30,20,10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar( // Profile picture
              radius: 50,
              backgroundImage: AssetImage('assets/profile_pic.jpg'), // Replace with your image
            ),

            const Text( // Name and username
              'Lee Jong Hyun',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text( 
              '@Corner.Pic_',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const Padding( // Bio
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'This is a short bio about yourself. You can add more details about who you are!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),

            Row( // Email and phone number
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

            Row( // Social media icons
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
