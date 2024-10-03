// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:share/share.dart';
// import 'package:share_plus/share_plus.dart';

class ShareTextScreen extends StatefulWidget {
  const ShareTextScreen({super.key});

  @override
  State<ShareTextScreen> createState() => _ShareTextScreenState();
}

class _ShareTextScreenState extends State<ShareTextScreen> {
  TextEditingController _controller = TextEditingController();

  void _shareText() {
    String msg = _controller.text;
    FocusScope.of(context).unfocus();
    if (msg.isNotEmpty) {
      Share.share(msg);
    } else {
      const errorSncackBar = SnackBar(
        content: Text('enter some text please!'),
      );
      ScaffoldMessenger.of(context).showSnackBar(errorSncackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Share Text',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: 300,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter your text',
                  filled: true,
                  fillColor: Colors.blueGrey.shade100,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: _shareText,
              label: const Text('Share Text'),
              icon: const Icon(Icons.share),
            ),
          ],
        ),
      ),
    );
  }
}
