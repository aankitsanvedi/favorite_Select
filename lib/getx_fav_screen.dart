import 'package:fav_select/controller/fav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetFavScreen extends StatefulWidget {
  const GetFavScreen({super.key});

  @override
  State<GetFavScreen> createState() => _GetFavScreenState();
}

class _GetFavScreenState extends State<GetFavScreen> {
  FavauriteController controller = Get.put(FavauriteController());

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
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: controller.name.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: ClipOval(
                    child: Image.network(
                        'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?w=1380&t=st=1719307873~exp=1719308473~hmac=974935d9a59c84cb599a5a3d90a894c0ef8c5dd3b7f9b4f3fbab7c3db32164f6'),
                  ),
                  title: Text(controller.name[index].toString()),
                  trailing: IconButton(
                    onPressed: () {
                      if (controller.selectFavList
                          .contains(controller.name[index].toString())) {
                        controller.removeToFavorite(
                            controller.name[index].toString());
                      } else {
                        controller
                            .addToFavourite(controller.name[index].toString());
                      }

                      print(controller.selectFavList);
                    },
                    icon: Obx(
                      () => Icon(
                        controller.selectFavList
                                .contains(controller.name[index].toString())
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
