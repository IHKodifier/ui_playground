import 'package:flutter/material.dart';
import 'package:ui_playground/data.dart';
import 'package:ui_playground/fuelStopsPage.dart';
import 'package:ui_playground/logbookPage.dart';
import 'package:ui_playground/models/maintenances_tab.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  // Widget tabBar() {
  //   return SliverToBoxAdapter(
  //     child: tabBar(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    final tabBar = TabBar(
      controller: tabController,
      // indicator: BoxDecoration(
      //     borderRadius: BorderRadius.circular(6),
      //     color: Theme.of(context).colorScheme.surface),
      tabs: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.car_repair,
                size: 40,
              ),
              Text(
                'Maintances',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.local_gas_station_rounded,
                size: 40,
              ),
              Text(
                'Fuel Stops',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                Icons.location_pin,
                size: 40,
              ),
              Text(
                'Log Book',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ],
    );

    final tabBarView = SliverToBoxAdapter(
      child: Container(
        height: 600,
        child: TabBarView(
          controller: tabController,
          physics: const PageScrollPhysics(),
          children:  [
            MaintenancesTab(),
            const FuelStopsPage(),
           const  LogBookPage(),
          ],
        ),
      ),
    );

    final state = vehicle1;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // bottom: tabBarWidget(),
            pinned: true,
            floating: true,
            backgroundColor: Theme.of(context).primaryColor,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).colorScheme.background,
                        Colors.transparent,
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.center,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      Text(
                        state.reg!,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: tabBar),
      tabBarView,
        ],
      ),
    );
  }
}
