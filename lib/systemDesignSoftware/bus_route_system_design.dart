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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bus Route System Design"),
        ),
        body: Container(
          child: Column(
            children: [
              Text("All Routes Being shown to you is: [1, 2, 7] and [3,6,7]"),
              Container(
                child: TextField(
                  controller: source,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter Source Station"),
                ),
              ),
              Container(
                child: TextField(
                  controller: destination,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter Source Station"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    minNoOfBuses = findMinNoOfBuses(
                        routes: routes,
                        source: int.parse(source.text),
                        dest: int.parse(destination.text));
                    debugPrint("Min No of Buses: $minNoOfBuses");
                    setState(() {});
                  },
                  child: Text("Find Route with Min No. of Buses")),
              Text(
                  "Minimum Number of Buses you need to Change is $minNoOfBuses")
            ],
          ),
        ));
  }
}

int findMinNoOfBuses(
    {required List<List<int>> routes, required int source, required int dest}) {
  debugPrint("source in fn is: $source");
  debugPrint("dest ib=n fn is: $dest");
  if (source == dest) {
    return 0;
  }

  //var adjListMap = Map();
  //var adjMap = {};

  Map<int, List<int>> adjListMap = Map<int, List<int>>();
  //map of (stop and routes index List)

  for (int route = 0; route < routes.length; route++) {
    for (int stop in routes[route]) {
      //for(int i in list)
      if (!adjListMap.containsKey(stop)) {
        adjListMap[stop] = [];
      }
      adjListMap[stop]!.add(route);
    }
  }

  if (!adjListMap.containsKey(source)) {
    return 0;
  }

  Queue<int> queue = Queue<int>();

  Set<int> visited = Set<int>();

//inserting all the routes in the queue that has the source stop
  for (int route in adjListMap[source]!) {
    queue.add(route);
    visited.add(route);
  }

  int minBuses = 1;

  while (queue.isNotEmpty) {
    int size = queue.length;

    for (int i = 0; i < size; i++) {
      int currentRoute = queue.removeFirst();

      for (int stop in routes[currentRoute]) {
        //case in which dest is present in same route then usi route me utarna hai
        if (stop == dest) {
          return minBuses;
        }

        for (int nextRoute in adjListMap[stop]!) {
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
