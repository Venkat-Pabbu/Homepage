import 'package:flutter/material.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState  extends State<DashboardScreen> {
  //setting the expansion function for the navigation rail
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //Let's start by adding the Navigation Rail
          NavigationRail(
              extended: isExpanded,
              backgroundColor: Colors.lightGreen.shade400,
              unselectedIconTheme:
              const IconThemeData(color: Colors.black, opacity: 1),
              unselectedLabelTextStyle: const TextStyle(
                color: Colors.black,
              ),
              selectedIconTheme:
              IconThemeData(color: Colors.deepPurple.shade900),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.shopping_cart_sharp),
                  label: Text("Vendors"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.people_alt),
                  label: Text("Users"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bar_chart),
                  label: Text("Reports"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.emoji_people_rounded),
                  label: Text("Profile"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.event_available_outlined),
                  label: Text("Availability"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.mail),
                  label: Text("Mail"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.home_filled),
                  label: Text("Product Management"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text("Settings"),
                ),
              ],
              selectedIndex: 0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //let's add the navigation menu for this project
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            //let's trigger the navigation expansion
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          icon: const Icon(Icons.menu),
                        ),
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-_uP-OMmEQRo1qUr5_KcIwJKrbD2_ywFiWg&usqp=CAU"),
                          radius: 35.0,

                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    //Now let's start with the dashboard main rapports
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.home_filled,
                                        size: 26.0,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color:Colors.blue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  /*const Text(
                                    "6 Articles",
                                    style: TextStyle(
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )*/
                                ],
                              ),
                            ),
                          ),
                        ),
                        /*Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.shopping_cart_sharp,
                                        size: 26.0,
                                        color: Colors.red,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Vendors",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  *//*const Text(
                                    "+32 Vendors",
                                      style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold,
                                       ),
                                    )*/
                        /*],
                              ),
                            ),
                          ),
                        ),*/
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Row(
                                      children: [
                                        const Icon(
                                          Icons.shopping_cart_sharp,
                                          size: 26.0,
                                          color: Colors.red,
                                        ),
                                        DropdownButton(
                                            hint: const Text("Vendors",
                                                style:TextStyle(
                                                  color:Colors.red,
                                                  fontSize: 26,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                            ),

                                            items: const [
                                              /*DropdownMenuItem(
                                                value: "Venue",
                                                child: Text("Venue"),
                                              ),*/
                                              DropdownMenuItem(
                                               value: "Food",
                                                child: Text.rich(
                                                  TextSpan(
                                                    style: TextStyle(fontWeight: FontWeight.bold),
                                                    children: [
                                                      TextSpan(text: 'Food & Beverages'),
                                                  WidgetSpan(
                                                      child: Icon(Icons.fastfood,color: Colors.red),
                                                      ),
                                                     // TextSpan(text: 'icon.fast-food'),
                                                  //    ),
                                                    ],
                                                  ),
                                                ),
                                               /* child: Icon(
                                                Icons.fast-food,
                                                size:26.0,
                                                color:Colors.red,
                                                ),*/
                                              ),
                                              DropdownMenuItem(
                                                value: "Services",
                                                //child: Text("Services"),

                                                child: Icon(
                                                  Icons.emoji_transportation_sharp,
                                                  size: 26.0,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                            onChanged: (value) {}),
                                        const SizedBox(
                                          width: 20.0,
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        /*Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.people_alt,
                                        size: 26.0,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Users",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  *//*const Text(
                                    "3.2M Users",
                                    style: TextStyle(
                                      fontSize: 36,
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )*//*
                                ],
                              ),
                            ),
                          ),
                        ),*/
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Row(
                                      children: [
                                        const Icon(
                                          Icons.people_alt,
                                          size: 26.0,
                                          color: Colors.yellow,
                                        ),
                                        DropdownButton(
                                            hint: const Text("Users",
                                                style:TextStyle(
                                                  color:Colors.yellow,
                                                  fontSize: 26,
                                                  fontWeight: FontWeight.bold,
                                                )
                                            ),
                                            items: const [
                                              DropdownMenuItem(
                                                value: "Venue",
                                                child: Text("Venue"),
                                              ),
                                              DropdownMenuItem(
                                                  value: "Food",
                                                  child: Text("Food & Beverages "),
                                              ),
                                              DropdownMenuItem(
                                                value: "Services",
                                                child: Text("Services"),
                                              ),
                                            ],
                                            onChanged: (value) {}),
                                        const SizedBox(
                                          width: 20.0,
                                        ),
                                      ]
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.graphic_eq,
                                        size: 26.0,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Reports",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  /*const Text(
                                    "2.300 \$",
                                    style: TextStyle(
                                      fontSize: 36,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )*/
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Now let's set the article section
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "6 New Users",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            /*Text(
                              "3 new Articles",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                            ),*/
                          ],
                        ),
                        const SizedBox(
                          width: 300.0,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search here",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    //let's set the filter section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.deepPurple.shade400,
                          ),
                          label: Text(
                            "2022, July 14, July 15, July 16",
                            style: TextStyle(
                              color: Colors.deepPurple.shade400,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            DropdownButton(
                                hint: const Text("Filter by"),
                                items: const [
                                  DropdownMenuItem(
                                    value: "Date",
                                    child: Text("Date"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Comments",
                                    child: Text("Comments"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Views",
                                    child: Text("Views"),
                                  ),
                                ],
                                onChanged: (value) {}),
                            const SizedBox(
                              width: 20.0,
                            ),
                            DropdownButton(
                                hint: const Text("Order by"),
                                items: const [
                                  DropdownMenuItem(
                                    value: "Date",
                                    child: Text("Date"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Comments",
                                    child: Text("Comments"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Views",
                                    child: Text("Views"),
                                  ),
                                ],
                                onChanged: (value) {}),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    //Now let's add the Table
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DataTable(
                            headingRowColor: MaterialStateProperty.resolveWith(
                                    (states) => Colors.grey.shade200),
                            columns: const [
                              DataColumn(label: Text("ID")),
                              DataColumn(label: Text("Date")),
                              DataColumn(label: Text("No.of Users")),
                              DataColumn(label: Text("No.of orders")),
                              DataColumn(label: Text("Cost")),
                            ],
                            rows: [
                              DataRow(cells: [
                                const DataCell(Text("0")),
                                const DataCell(
                                    Text("24")),
                                DataCell(Text("${DateTime.now()}")),
                                const DataCell(Text("2.3K Views")),
                                const DataCell(Text("102Comments")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("1")),
                                const DataCell(
                                    Text("25")),
                                DataCell(Text("${DateTime.now()}")),
                                const DataCell(Text("21.3K Views")),
                                const DataCell(Text("1020Comments")),
                              ]),
                              DataRow(cells: [
                                const DataCell(Text("2")),
                                const DataCell(
                                    Text("Flutter for your first project")),
                                DataCell(Text("${DateTime.now()}")),
                                const DataCell(Text("2.3M Views")),
                                const DataCell(Text("10K Comments")),
                              ]),
                            ]),
                        //Now let's set the pagination
                        const SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "1",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "2",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "3",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "See All",
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      //let's add the floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple.shade400,
        child: const Icon(Icons.add),
      ),
    );
  }
}