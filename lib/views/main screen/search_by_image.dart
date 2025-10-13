import 'package:flutter/material.dart';

class SearchByImage extends StatefulWidget {
  const SearchByImage({super.key});

  @override
  State<SearchByImage> createState() => _SearchByImageState();
}

final TextEditingController teamRankControler = TextEditingController();
final TextEditingController teamNameControler = TextEditingController();

pickImageFromGallery() {}

class _SearchByImageState extends State<SearchByImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            const SizedBox(
                height: 40,
                child: Text(
                  'FireBase DataBase',
                  style: TextStyle(
                      fontSize: 24,
                      wordSpacing: 1.5,
                      letterSpacing: 1.4,
                      fontWeight: FontWeight.bold),
                )),
            Center(
              child: Container(
                margin: const EdgeInsets.all(14),
                height: MediaQuery.of(context).size.height * 0.36,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    color: const Color(0xffFEC4DD),
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(26))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 35,
                            color: Colors.white,
                          )),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text('Select Image from Your Gallery'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 50,
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.yellowAccent),
                ),
                child: const Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
