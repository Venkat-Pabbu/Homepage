import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
              backgroundColor: Colors.deepPurple.shade400,
              unselectedIconTheme:
                  const IconThemeData(color: Colors.white, opacity: 1),
              unselectedLabelTextStyle: const TextStyle(
                color: Colors.white,
              ),
              selectedIconTheme:
                  IconThemeData(color: Colors.deepPurple.shade900),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.dashboard),
                  label: Text("Dashboard "),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bar_chart),
                  label: Text("Reports"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.shopping_cart),
                  label: Text("Vendors"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.people),
                  label: Text("Users"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.event_available_outlined),
                  label: Text("Availability"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.mail_outline_outlined),
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
              padding: const EdgeInsets.all(60.0),
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
                              "https://gamescrack.org/wp-content/uploads/2019/08/House_Party_Walkthrough_2-768x432.jpg"),
                          radius: 26.0,
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
                                        Icons.home,
                                        color: Colors.purple,
                                        size: 26.0,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Home",
                                        style: TextStyle(
                                          color: Colors.purple,
                                          fontSize: 26.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
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
                                    children: [
                                      const Icon(
                                        Icons.shopping_cart,
                                        size: 26.0,
                                        color: Colors.purple,
                                      ),
                                      DropdownButton(
                                          hint: const Text(
                                            "Vendors",
                                            style: TextStyle(
                                              color: Colors.purple,
                                              fontSize: 26,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          items: const [
                                            DropdownMenuItem(
                                              value: "Food & Beverages",
                                              child: Text(
                                                  "Food & Beverages"),
                                            ),
                                            DropdownMenuItem(
                                              value: "Services",
                                              child: Text("Services"),
                                            ),
                                          ],
                                          onChanged: (value) {}),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                    ],
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
                                        Icons.people,
                                        size: 26.0,
                                        color: Colors.purple,
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text(
                                        "Users",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
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
                                        Icons.bar_chart,
                                        size: 26.0,
                                        color: Colors.purple,
                                      ),
                                      Text(
                                        "Reports",
                                        style: TextStyle(
                                          fontSize: 26.0,
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
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
                              "6 new users ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 28.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "3 new reviews",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400),
                            ),
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
                            "2023, July 14, July 15, July 16",
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
                                    value: "Availability",
                                    child: Text("Availability"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Reviews",
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
                                    value: "Availability",
                                    child: Text("Availability"),
                                  ),
                                  DropdownMenuItem(
                                    value: "Reviews",
                                    child: Text("Reviews"),
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
                              DataColumn(label: Text("Name")),
                              DataColumn(label: Text("Contact Number")),
                              DataColumn(label: Text("Location")),
                              DataColumn(label: Text("Rating")),
                              DataColumn(label: Text("Comments")),
                            ],
                            rows: const [
                              DataRow(cells: [
                                DataCell(Text("Shiva")),
                                DataCell(Text("7586857969")),
                                DataCell(Text("Manikonda")),
                                DataCell(Text("4.4")),
                                DataCell(Text("Good")),
                              ]),
                              DataRow(cells: [
                                DataCell(Text("Kiran")),
                                DataCell(Text("6867678789")),
                                DataCell(Text("Erragadha")),
                                DataCell(Text("3.6")),
                                DataCell(Text("Affordable")),
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
                        )
                      ],
                    )
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
