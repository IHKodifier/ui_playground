import 'package:ui_playground/models/maintenance.dart';
import 'package:ui_playground/models/service.dart';
import 'package:ui_playground/models/vehicle.dart';

Vehicle vehicle1 = Vehicle(
    id: '999',
    doors: 5,
    driven: 97000,
    images: ['url1', 'url2'],
    maintenances: maintenancesList,
    make: 'Make',
    model: 'Model',
    reg: 'reg number',
    regCity: 'regcity',
    year: 'year 99');
List<Maintenance> maintenancesList = <Maintenance>[
  Maintenance(
    cost: 1234,
    id: 'Maintenance id 1',
    kmsDriven: 96001,
    litres: 1,
    location: 'Maint location 1',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 5678,
    id: 'Maintenance id 2',
    kmsDriven: 94002,
    litres: 2,
    location: 'Maint location 2',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 91003,
    id: 'Maintenance id 3',
    kmsDriven: 88300,
    litres: 3,
    location: 'Maint location 3',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 9101112,
    id: 'Maintenance id 4',
    kmsDriven: 84650,
    litres: 3,
    location: 'Maint location 4',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 9101112,
    id: 'Maintenance id 5',
    kmsDriven: 99005,
    litres: 3,
    location: 'Maint location 5',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 9101112,
    id: 'Maintenance id 6',
    kmsDriven: 99005,
    litres: 3,
    location: 'Maint location 6',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 9101112,
    id: 'Maintenance id 7',
    kmsDriven: 99005,
    litres: 3,
    location: 'Maint location 7',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 9101112,
    id: 'Maintenance id 8',
    kmsDriven: 99005,
    litres: 3,
    location: 'Maint location 8',
    services: servicesList,
    timestamp: DateTime.now(),
  ),
  Maintenance(
    cost: 9101112,
    id: 'Maintenance id 9',
    kmsDriven: 99005,
    litres: 3,
    location: 'Maint location 9',
    services: servicesList,
    timestamp: DateTime.now(),
  ),

];

List<Service> servicesList = <Service>[
  Service(name: 'service name 1', cost: 1),
  Service(name: 'service name 2', cost: 2),
  Service(name: 'service name 3', cost: 3),
  Service(name: 'service name 4', cost: 4),
];
