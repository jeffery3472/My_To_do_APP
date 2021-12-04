import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const todoapp(),
    );
  }
}

class todoapp extends StatelessWidget {
  const todoapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/photos/camel-portrait-picture-id1300100945?b=1&k=20&m=1300100945&s=170667a&w=0&h=vGv_0jG8y15MyoUTy7mdmGSLSilLjO1_kDLjCGJ96Js="),
            ),
          ),
          title: Text(
            "My tasks",
            style: TextStyle(
                color: Colors.indigo.shade900, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.filter_list,
              color: Colors.indigo.shade900,
            ),
            Icon(Icons.search_rounded, color: Colors.indigo.shade900)
          ],
        ),
        body: Column(children: [
          listwidget(
            name: "Plan the trip to Finland",
            response: "The family's trip to Finland next summer",
            color: Colors.pinkAccent.shade400,
            value: 10,),
          listwidget(
              name: "Plan Susan's birthday",
              response: "",
              color: Colors.blueAccent.shade700,
              value: 0,),
          listwidget(
              name: "Groceries for dinner",
              response:
                  "Get tomatoes,lettuce,potatoes,greenbeans,cream and beans fillet.Also buy red wine at John'sWine Shop",
              color: Colors.blueAccent.shade700,
              value: 0),
          listwidget(
              name: "Ports projects",
              response: "Send the presentation to Bill",
              color: Colors.grey,
              value: 0),
          listwidget(
              name: "Take jacket to cleaning",
              response: "",
              color: Colors.grey,
              value: 0),
         /* listwidget(
              name: "Fix Dad's PC",
              response:
                  "Install the latest updates and check your wireless connections",
              color: Colors.grey,
              value: 0),
          listwidget(
              name: "Trip to StockHolm",
              response: "Talk with Monica about this trip",
              color: Colors.grey,
              value: 0),*/
          Padding(
            padding: const EdgeInsets.only(bottom: 0,top: 5,left: 15,right: 15),
            child: Card(
              child: ListTile(
                leading:
                 Icon(Icons.check_circle,color: Colors.blue.shade900,),
                 title: 
                  Row(
                   mainAxisSize: MainAxisSize.max,children: [
                   Text("completed"),Icon(Icons.arrow_drop_down)
                 ],),),
              ),
            ),
          
        ]));
  }
}

class listwidget extends StatelessWidget {
  const listwidget({
    Key? key,
    required this.name,
    required this.response,
    required this.color,
    required this.value,
  }) : super(key: key);

  final String name;
  final String response;
  final Color color;
  final double? value;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.0, left: 15, right: 15),
      child: Column(
        children: [
          Card(
            elevation: value,
            child: ListTile(
              leading: Icon(
                Icons.check_circle_outline,
                color: color,
                size: 20,
              ),
              title: Text(
                name,
                style: TextStyle(
                    color: Colors.indigo.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.5),
              ),
              minLeadingWidth: 2,
              horizontalTitleGap: 6,
              subtitle: Text(
                response,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11.6,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.pinkAccent.shade400,
                      size: 15,
                    ),
                    Text(
                      "Yesterday",
                      style: TextStyle(
                          fontSize: 10, color: Colors.pinkAccent.shade400),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
