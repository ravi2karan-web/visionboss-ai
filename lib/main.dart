import 'package:flutter/material.dart';

void main() {
  runApp(const VisionBossApp());
}

class VisionBossApp extends StatelessWidget {
  const VisionBossApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VisionBoss AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String response = "Ask something...";

  void askAI() {
    setState(() {
      response = "VisionBoss AI is thinking...";
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        response = "This is a demo AI response 🚀";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("VisionBoss AI"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter your idea...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: askAI,
              child: const Text("Ask AI"),
            ),
            const SizedBox(height: 20),
            Text(
              response,
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
