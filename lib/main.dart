import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ui_playground/data.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int  _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(
      initialPage: _selectedPage,
    );

    final pageView = PageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      // physics: ScrollPhysics(),
           onPageChanged: (value) => setState(() {
        _selectedPage = value;
      }),

      children: const [
        MaintenancesPage(),
        FuelStopsPage(),
        LogBookPage(),
      ],
    );
    final state = vehicle;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
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
          SliverToBoxAdapter(
            child: Container(
              height: 600,
              color: Colors.pink,
              width: MediaQuery.of(context).size.width / 2,
              child: pageView,
            ),
          ),
        ],
      ),
    );
  }
}

class MaintenancesPage extends ConsumerWidget {
  const MaintenancesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      // height: 50,
      width: 50,
      color: Colors.pink,
      child: Text('Maintenances'),
    );
  }
}

class FuelStopsPage extends ConsumerWidget {
  const FuelStopsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.blue,
      child: Text('Fuel Stops'),
    );
  }
}

class LogBookPage extends ConsumerWidget {
  const LogBookPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.red,
      child: Text('Log Book'),
    );
  }
}
