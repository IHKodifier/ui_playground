import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogBookPage extends ConsumerWidget {
  const LogBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.red,
      child: Center(child: Text('Log Book')),
    );
  }
}
