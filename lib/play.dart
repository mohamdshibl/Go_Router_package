import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Play extends StatelessWidget {
  const Play({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
              onPressed: (){ },
              child: const Text('back to home'),
            ),
      ),

    );
  }
}
