import 'package:flutter/material.dart';
import 'package:instagram/widgets/profilePhoto.dart';

class chatandCall extends StatelessWidget {
  int lanaOrDuke;
  chatandCall({super.key, this.lanaOrDuke = 0});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                profilePhoto(
                    photo: (lanaOrDuke % 2 == 0)
                        ? "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"
                        : "https://i.etsystatic.com/36532523/r/il/97ae46/4078306713/il_340x270.4078306713_n74s.jpg"),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (lanaOrDuke % 2 == 0)
                          ? const Text(
                              "Duke Mcgrath",
                              style: TextStyle(color: Colors.white),
                            )
                          : const Text(
                              "Lana Robin",
                              style: TextStyle(color: Colors.white),
                            ),
                      const Text("Active Today",
                          style: TextStyle(
                              color: Color.fromARGB(255, 174, 174, 174)))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_enhance_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
