import 'package:flutter/material.dart';
import 'package:my_chatiy/firebase/curd.dart';

class SearchByImage extends StatefulWidget {
  const SearchByImage({super.key});

  @override
  State<SearchByImage> createState() => _SearchByImageState();
}


class _SearchByImageState extends State<SearchByImage> {
  final controler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40, child: Text('FireBase Database')),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                  controller: controler,
                  maxLines: 4,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 73, 68, 68),
                    constraints: BoxConstraints(minWidth: 250),
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                  )),
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              //create();
              //update();
              delete();
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.amberAccent),
            ),
            child: const Text('Post'),
          )
        ],
      ),
    );
  }
}
