import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_playground/data.dart';
import 'package:ui_playground/maintenance_card.dart';
import 'package:ui_playground/models/maintenance.dart';
import 'package:ui_playground/models/vehicle.dart';

class MaintenancesTab extends ConsumerWidget {
   MaintenancesTab({super.key});

  final vehicleState = vehicle1;

  Widget maintenanceCardItemBuilder(BuildContext context, int index) {
    Maintenance maintenanceState = vehicle1.maintenances[index]!;
    return 
    MaintenanceCard(maintenanceState: maintenanceState);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return 
        CustomScrollView(
          slivers: [
            SliverList(
              delegate:SliverChildBuilderDelegate(
             maintenanceCardItemBuilder,
            childCount: vehicle1.maintenances.length,
          ),),],
        );
  }
}









