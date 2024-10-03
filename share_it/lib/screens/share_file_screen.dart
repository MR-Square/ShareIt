import 'package:flutter/material.dart';

class ShareFileScreen extends StatefulWidget {
  const ShareFileScreen({super.key});

  @override
  State<ShareFileScreen> createState() => _ShareFileScreenState();
}

class _ShareFileScreenState extends State<ShareFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Share File',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Share text working',
        ),
      ),
    );
  }
}
