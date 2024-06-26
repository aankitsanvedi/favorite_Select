import 'dart:developer';

import 'package:flutter/material.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  List<String> name = [
    'Ankit',
    'Ravi',
    'Niraj',
    'Monu',
    'Sonu',
    'Vaibhav',
    'Shubham'
  ];
  List<String> desc = [
    'Ankit Sanvedi',
    'Ravi Kumar',
    'Niraj Shah',
    'Monu Singh',
    'Sonu Dinkar',
    'Vaibhav Gupta',
    'Shubham Jain'
  ];

  List<String> select_list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Favourite',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              
            },
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: ClipOval(
                    child: Image.network(
                        'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=1380&t=st=1719307873~exp=1719308473~hmac=974935d9a59c84cb599a5a3d90a894c0ef8c5dd3b7f9b4f3fbab7c3db32164f6'),
                  ),
                  title: Text(name[index].toString()),
                  subtitle: Text(desc[index].toString()),
                  trailing: IconButton(
                      onPressed: () {
                        if (select_list.contains(name[index].toString())) {
                          select_list.remove(name[index].toString());
                        } else {
                          select_list.add(name[index].toString());
                        }

                        setState(() {});
                        print(select_list);
                      },
                      icon: Icon(
                        select_list.contains(name[index].toString())
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      )),
                ),
              ),
            );
          }),
    );
  }
}
