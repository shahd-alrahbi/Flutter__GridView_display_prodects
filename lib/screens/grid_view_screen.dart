import 'package:day_12_9/models/user.dart';
import 'package:flutter/material.dart';

class grid_view_screen extends StatefulWidget {
  const grid_view_screen({super.key});

  @override
  State<grid_view_screen> createState() => _grid_view_screenState();
}

class _grid_view_screenState extends State<grid_view_screen> {
  List<User> userlist = [
    User(
        name: "Camputers",
        image:
            "https://i.pinimg.com/564x/4f/a7/9e/4fa79e8c4ced76294ff6d2356e177c31.jpg"),
    User(
        name: "BackPack",
        image:
            "https://i.pinimg.com/564x/5f/1c/15/5f1c15708be1e409bed451e504aec051.jpg"),
    User(
        name: "Office Equipments",
        image:
            "https://i.pinimg.com/564x/ab/e3/1f/abe31f5ea228b5954fd2bffab0f9a69e.jpg"),
    User(
        name: "Printers",
        image:
            "https://i.pinimg.com/564x/d8/73/c6/d873c6a38875a8627fff3507fbf84e5f.jpg"),
    User(
        name: "Mouse",
        image:
            "https://i.pinimg.com/236x/e6/83/4c/e6834c641acf619ff9e9531b97f3fe2b.jpg"),
    User(
        name: "CPU",
        image:
            "https://i.pinimg.com/236x/e9/60/25/e9602546af62e63f686873811d2d3b17.jpg"),
    User(
        name: "Mac Laptop",
        image:
            "https://i.pinimg.com/236x/1f/af/2a/1faf2a42d3c7b46ced2b270416915249.jpg"),
    User(
        name: "Earphone",
        image:
            "https://i.pinimg.com/236x/9f/da/10/9fda10de2ae224fb42f1ae108c5de27e.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Our Prodect",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: userlist.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 249, 247),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Text(userlist[index].name!,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    (userlist[index].image!),
                    fit: BoxFit.cover,
                    height: 130,
                    width: 300,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
