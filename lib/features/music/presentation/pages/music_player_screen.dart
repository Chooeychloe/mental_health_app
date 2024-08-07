import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/down_arrow.png'),
        actions: [
          Image.asset(
            'assets/transcript_icon.png',
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
