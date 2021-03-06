import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:to_do_app/utilities.dart';

class todoapp extends StatelessWidget {
  const todoapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://media.istockphoto.com/photos/headshot-of-camel-oman-picture-id1141528670?b=1&k=20&m=1141528670&s=170667a&w=0&h=JFSWaYU5ofoJH6YKXm0BpRDGDuOLHzfK6A-L_FIcBzU="),
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
      body: ListView(
        children: [
          listwidget(
            name: "Plan the trip to Finland",
            response: "The family's trip to Finland next summer",
            value: 10,
            time: "Yesterday",
          ),
          listwidget(
            name: "Plan Susan's birthday",
            response: "",
            value: 0,
            time: "Yesterday",
          ),
          listwidget(
            name: "Groceries for dinner",
            response:
                "Get tomatoes,lettuce,potatoes,greenbeans,cream and beans fillet.Also buy red wine at John'sWine Shop",
            value: 0,
            time: "Yesterday",
          ),
          listwidget(
            name: "Ports projects",
            response: "Send the presentation to Bill",
            value: 0,
            time: "Yesterday",
          ),
          listwidget(
            name: "Take jacket to cleaning",
            response: "",
            value: 0,
            time: "Yesterday",
          ),
          listwidget(
            name: "Fix Dad's PC",
            response:
                "Install the latest updates and check your wireless connections",
            value: 0,
            time: "Yesterday",
          ),
          listwidget(
            name: "Trip to StockHolm",
            response: "Talk with Monica about this trip",
            value: 0,
            time: "Yesterday",
          ),
        ],
      ),
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              showBarModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(children: [
                      listwidget(
                        name: "Plan the trip to Finland",
                        response: "The family's trip to Finland next summer",
                        value: 10,
                        time: "Yesterday",
                      ),
                      listwidget(
                        name: "Plan Susan's birthday",
                        response: "",
                        value: 0,
                        time: "Yesterday",
                      )
                    ]);
                  });
            },child:  Card(
          child: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.blue),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("completed"),
              ),
              Icon(Icons.arrow_drop_down),
              SizedBox(
                width: 110,
              ),
              Text("24")
            ],
          ),
        ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

class listwidget extends StatelessWidget {
  const listwidget(
      {Key? key,
      required this.name,
      required this.response,
      required this.value,
      required this.time})
      : super(key: key);

  final String name;
  final String response;

  final double? value;
  final String time;

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
                color: color(time),
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
                      color: color(time),
                      size: 15,
                    ),
                    Text(
                      time,
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
