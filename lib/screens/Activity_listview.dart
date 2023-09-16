import 'package:day_12_9/models/user.dart';
import 'package:flutter/material.dart';

class Activity_listview extends StatefulWidget {
  const Activity_listview({super.key});

  @override
  State<Activity_listview> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<Activity_listview> {
  List<User> userlist = [
    User(
        name: "English",
        image:
            "https://i.pinimg.com/564x/ff/76/57/ff7657010677b3dbe75fe03c5de5a8d7.jpg"),
    User(
        name: "French",
        image:
            "https://cdn.britannica.com/82/682-004-F0B47FCB/Flag-France.jpg"),
    User(
        name: "German",
        image:
            "https://i.pinimg.com/736x/38/c1/1e/38c11e8ee6facded1422907bde13c7c1.jpg"),
    User(
        name: "Chinese",
        image:
            "https://i.pinimg.com/564x/cb/a2/68/cba2689bdcef1c2bf3b9007b3229b997.jpg"),
    User(
        name: "Japanese",
        image:
            "https://i.pinimg.com/564x/4f/e8/c0/4fe8c0e811313675cc8c5c7def589be3.jpg"),
    User(
        name: "Tukrkish",
        image:
            "https://i.pinimg.com/564x/5c/12/33/5c1233aca35ecfa08dc84ee2b6ef4469.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: userlist.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 100,
            child: Card(
              child: ListTile(
                leading: Image.network(userlist[index].image!),
                title: Text(userlist[index].name!),
              ),
            ),
          );
        },
      ),
    );
  }
}
