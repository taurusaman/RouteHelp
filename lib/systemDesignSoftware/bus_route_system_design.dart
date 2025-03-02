import 'dart:collection';

import 'package:flutter/material.dart';
import 'data_model_base.dart';

class BusRouteSystemDesign extends StatefulWidget {
  const BusRouteSystemDesign({super.key});

  @override
  State<BusRouteSystemDesign> createState() => _BusRouteSystemDesignState();
}

class _BusRouteSystemDesignState extends State<BusRouteSystemDesign> {
  var source = TextEditingController();
  var destination = TextEditingController();

  int? minNoOfBuses;
  bool showAllRoutes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bus Route System Design"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bus Route System Design", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
                TextField(
                  controller: source,
                  decoration: InputDecoration(
                    labelText: "Enter Source Station",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: destination,
                  decoration: InputDecoration(
                    labelText: "Enter Destination Station",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    minNoOfBuses = findMinNoOfBuses(
                        routes: routes,
                        source: source.text.toLowerCase(),
                        dest: destination.text.toLowerCase());
                    debugPrint("Min No of Buses: $minNoOfBuses");
                    setState(() {});
                  },
                  child: Text("Find Route with Min No. of Buses"),
                ),
                SizedBox(height: 16),
                Text(
                  minNoOfBuses != null
                      ? "Minimum Number of Buses jo aapne Change karna padega: $minNoOfBuses"
                      : "Enter source and destination to find the minimum number of buses.",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showAllRoutes = !showAllRoutes;
                    });
                  },
                  child: Text(showAllRoutes ? "Hide All Routes" : "Show All Routes"),
                ),
                if (showAllRoutes) ...[
                  SizedBox(height: 16),
                  Text("All Routes Being shown to you are:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  for (var route in routes) 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Route No: ${routes.indexOf(route)+1}"),
                    Flexible(child: Text(route.toString()))
                    ] ),
                ],
              ],
            ),
          ),
        ));
  }
}

int findMinNoOfBuses(
    {required List<List<String>> routes,
    required String source,
    required String dest}) {
  debugPrint("source in fn is: $source");
  debugPrint("dest in fn is: $dest");
  if (source == dest) {
    return 0;
  }

  Map<String, List<int>> adjListMap = Map<String, List<int>>();

  for (int route = 0; route < routes.length; route++) {
    for (String stop in routes[route]) {
      String stopLower = stop.toLowerCase();
      if (!adjListMap.containsKey(stopLower)) {
        adjListMap[stopLower] = [];
      }
      adjListMap[stopLower]!.add(route);
    }
  }

  if (!adjListMap.containsKey(source)) {
    return 0;
  }

  Queue<int> queue = Queue<int>();

  Set<int> visited = Set<int>();

  for (int route in adjListMap[source]!) {
    queue.add(route);
    visited.add(route);
  }

  int minBuses = 1;

  while (queue.isNotEmpty) {
    int size = queue.length;

    for (int i = 0; i < size; i++) {
      int currentRoute = queue.removeFirst();

      for (String stop in routes[currentRoute]) {
        if (stop.toLowerCase() == dest) {
          return minBuses;
        }

        for (int nextRoute in adjListMap[stop.toLowerCase()]!) {
          if (!visited.contains(nextRoute)) {
            queue.add(nextRoute);
            visited.add(nextRoute);
          }
        }
      }
    }
    minBuses++;
  }

  return 0;
}
