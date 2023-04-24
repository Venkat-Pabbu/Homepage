
import 'package:flutter/material.dart';

import '../Cart_res/menuItems.dart';

class HomePage extends StatefulWidget {
  static var routeName = "/Cart_Home";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),

                      // const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/Cart_cartPage');
                        },
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: MenuItemsModelList.map(
                      (e) => Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 20),
                            height: 100,
                            width: width * 0.6,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(color: Colors.grey, blurRadius: 3),
                              ],
                            ),
                            alignment: const Alignment(-0.25, 0),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  e.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                Text(
                                  "${e.totalItem} items",
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ],
                            ),

                            // global.iconbutton(
                            //   callback: () {
                            //     print("clicked");
                            //     // setState(() {
                            //     //   if (e['name'] == "Pizza") {
                            //     //     global.items = global.PizzaItems;
                            //     //     global.itemMenu = "Pizza";
                            //     //   } else if (e['name'] == "Salads") {
                            //     //     global.items = global.SaladsItem;
                            //     //     global.itemMenu = "Salads";
                            //     //   } else if (e['name'] == "Desserts") {
                            //     //     global.items = global.DessertsItem;
                            //     //     global.itemMenu = "Desserts";
                            //     //   } else if (e['name'] == "Pasta") {
                            //     //     global.items = global.pastaItem;
                            //     //     global.itemMenu = "Pasta";
                            //     //   } else if (e['name'] == "Beverages") {
                            //     //     global.items = global.beveragesItem;
                            //     //     global.itemMenu = "Beverages";
                            //     //   }
                            //     // });
                            //     Navigator.of(context)
                            //         .pushNamed("itemDetailsPage");
                            //   },
                            //   icon: Icon(Icons.arrow_forward_ios),
                            // ),
                          ),
                          SizedBox(
                            height: 100,
                            width: (width * 0.6) + 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const Alignment(-1.5, 0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: AssetImage(e.image),
                                    radius: 35,
                                  ),
                                ),
                                Align(
                                  alignment: const Alignment(1.3, 0),
                                  child: FloatingActionButton(
                                    heroTag: null,
                                    backgroundColor: Colors.deepOrangeAccent,
                                    child: const Icon(Icons.arrow_forward_ios),
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(
                                          "/Cart_Items",
                                          arguments: e);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ).toList(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
