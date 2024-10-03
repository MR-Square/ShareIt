import 'package:flutter/material.dart';

class ShareMailScreen extends StatefulWidget {
  const ShareMailScreen({super.key});

  @override
  State<ShareMailScreen> createState() => _ShareMailScreenState();
}

class _ShareMailScreenState extends State<ShareMailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Share Mail',
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
