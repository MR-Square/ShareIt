import 'package:flutter/material.dart';
import 'package:share_it/screens/share_file_screen.dart';
import 'package:share_it/screens/share_mail_screen.dart';
import 'package:share_it/screens/share_text_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'ShareIt',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShareTextScreen(),
                  ),
                );
              },
              label: const Text('Share Text'),
              icon: const Icon(Icons.text_fields_outlined),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShareFileScreen(),
                  ),
                );
              },
              label: const Text('Share File'),
              icon: const Icon(Icons.file_present),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShareMailScreen(),
                  ),
                );
              },
              label: const Text('Share Mail'),
              icon: const Icon(Icons.mail),
            ),
          ],
        ),
      ),
    );
  }
}
