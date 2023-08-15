import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FuelStopsPage extends ConsumerWidget {
  const FuelStopsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.blue,
      child: Center(child: Text('Fuel Stops')),
    );
  }
}
