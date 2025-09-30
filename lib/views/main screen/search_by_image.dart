import 'package:flutter/material.dart';

class SearchByImage extends StatefulWidget {
  const SearchByImage({super.key});

  @override
  State<SearchByImage> createState() => _SearchByImageState();
}

pickImageFromGallery(){
   
}

class _SearchByImageState extends State<SearchByImage> {
  final controler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            const SizedBox(
              height: 40, 
              child: Text('FireBase DataBase',
              style:TextStyle(
                fontSize: 24,
                wordSpacing: 1.5,
                letterSpacing: 1.4,
                fontWeight: FontWeight.w100
                ),)),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(15.0),
            //     child: TextField(
            //         controller: controler,
            //         maxLines: 4,
            //         style: const TextStyle(color: Colors.white),
            //         decoration: const InputDecoration(
            //           filled: true,
            //           fillColor: Color.fromARGB(255, 73, 68, 68),
            //           constraints: BoxConstraints(minWidth: 250),
            //           contentPadding: EdgeInsets.all(20),
            //           border: OutlineInputBorder(
            //               borderSide: BorderSide.none,
            //               borderRadius: BorderRadius.all(Radius.circular(24))),
            //         )),
            //   ),
            // ),
            // const SizedBox(height: 15),
            // ElevatedButton(
            //   onPressed: () {
            //     //create();
            //     //update();
            //     delete();
            //   },
            //   style: ButtonStyle(
            //     backgroundColor: WidgetStateProperty.all(Colors.amberAccent),
            //   ),
            //   child: const Text('Post'),
            // ),
            
            
            
            Center(
              child: Container(
                margin: const EdgeInsets.all(14),
                height: MediaQuery.of(context).size.height * 0.36,
                width: MediaQuery.of(context).size.width * 0.88,
                decoration: BoxDecoration(
                    color:const Color(0xffFEC4DD),
                    border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(26))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                          onPressed: () {

                          },
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
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amberAccent),
                ),
                child: const Text('Upload to Cloud'),
              ),
          ],
        ),
      ),
    );
  }
}
