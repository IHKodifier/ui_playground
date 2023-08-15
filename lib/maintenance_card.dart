import 'package:flutter/material.dart';
import 'package:ui_playground/data.dart';
import 'package:ui_playground/models/maintenance.dart';
import 'package:ui_playground/models/vehicle.dart';
import 'package:ui_playground/utils.dart';

class MaintenanceCard extends StatelessWidget {
  MaintenanceCard({
    super.key,
    required this.maintenanceState,
  });

  final Maintenance maintenanceState;
  final Vehicle vehicleState = vehicle1;

  // Widget itemBuilder(BuildContext context, int index) {
  //   return _maintenanceCard(context, index);
  // }

  Widget _maintenanceCard(
    BuildContext context,
  ) {
    // Offset  offset = Offset(
    //   0.0,0.0
    // );
    return SizedBox(
      height: 150,
      child: Card(
        elevation: 5,
        // shape: Shape,

        color: Theme.of(context).colorScheme.surface,
        margin: const EdgeInsets.all(4),
        child: Stack(
      
          children: [
            Positioned(
              left: 8,
              top: 8, 
              width: 100,
              child: Container(
                // color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    
                    (vehicleState.driven! - maintenanceState.kmsDriven)
                        .toString(),
                        textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16,  
              left: 108,
              // width: 600,
              child: Container(
                // color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Kms ago',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 20,
                 left: 132.0+ 52.0, 
                right: 12,
                 child: Container(
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(maintenanceState.location!,
                                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            // '${timeago.format(state.timestamp!)} ',
                            '3 days ago',
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(fontStyle: FontStyle.italic),
                          ),

                      ],
                    ),
                  ))),
          Positioned(
                top: 50,
                left: 80,

                // child: Container(color: Colors.teal,
                width: 270,
                // height: do
                child: Card(
                  // color: Colors.white54,
                  elevation: 5,
                  margin: const EdgeInsets.all(4),
                  child: Column(
                      // shrinkWrap: true,

                      // direction: Axis.vertical,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ...maintenanceState.services!
                            .map(
                              (e) => Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 2, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(child: Text(e!.name)),
                                    // SizedBox(width: 150),
                                    const Spacer(),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Text(Utils.thousandify(e.cost)),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                        // Spacer(),
                        // SizedBox(height: 6,),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(
                            thickness: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                        totalsRow(context),
                        const SizedBox(
                          height: 4,
                        ),
                      ]),
                ))
          ],

        ),
      ),
    );
  }
  totalsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Divider(thickness: 3,
        // color: Colors.black,),
        Text(
          'Total',
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(width: 40),
        // Spacer(),

        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: Text(
            Utils.thousandify(maintenanceState.cost!),
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return _maintenanceCard(
      context,
    );
  }
}
