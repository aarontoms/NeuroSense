import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      context.go('/login');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _scaleAnimation,
              child: Column(
                children: [
                  Image.asset(
                    'assets/image-removebg-preview (2).png',
                    width: 100,
                    height: 100,
                  ), // Your teal brain icon
                  const SizedBox(height: 16),
                  const Text(
                    'NeuroSense',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Skeletal-based autism trigger monitoring',
                    style: TextStyle(fontSize: 16, color: Colors.teal),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const LinearProgressIndicator(
              value: null,
              backgroundColor: Color(0xFFB2DFDB),
              color: Colors.teal,
            ),
            const SizedBox(height: 8),
            const Text('Loading...', style: TextStyle(color: Colors.teal)),
          ],
        ),
      ),
    );
  }
}
