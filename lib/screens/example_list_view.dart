import 'package:day_12_9/models/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class example_list_view extends StatefulWidget {
  const example_list_view({super.key});

  @override
  State<example_list_view> createState() => _example_list_viewState();
}

class _example_list_viewState extends State<example_list_view> {
  List<User> users = [
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
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .2,
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  width: MediaQuery.sizeOf(context).width * .3,
                  height: MediaQuery.sizeOf(context).height * .2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/236x/34/d5/bb/34d5bb3abb77f8cc04b5e45066610e58.jpg"),
                    ),
                  ),
                  child: Text(
                    "Oman",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      users[index].image!,
                      width: 60,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                    title: Text(users[index].name!),
                  ),
                );
              },
              itemCount: users.length,
            ),
          )
        ],
      ),
    ));
  }
}
