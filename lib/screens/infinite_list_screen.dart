import 'package:flutter/material.dart';

class InfinitieListScreen extends StatefulWidget {
  const InfinitieListScreen({super.key});

  @override
  State<InfinitieListScreen> createState() => _InfinitieListScreenState();
}

class _InfinitieListScreenState extends State<InfinitieListScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lista Infinita'),
    );
  }
}