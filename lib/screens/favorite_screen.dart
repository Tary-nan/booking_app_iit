import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/detail_screen.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  List<String> caterories = [
    "10 |Hotels",
    "10 |Favoritetay",
    "10 | Appartement",
    "10 | Jemima"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 100,
        leading: Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              'Booking',
              style: TextStyle(color: Colors.black),
            )),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey, width: 1)),
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.black,
                  size: 16,
                ),
                Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.black,
                  size: 16,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Divider(
                color: Colors.grey,
                thickness: .8,
              )),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Find your Favoritetay',
                  filled: true,
                  suffixIcon: Container(
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xff5ea2a0), width: 2)),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Color(0xff5ea2a0),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  fillColor: const Color(0XFFeef0f2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Divider(
                color: Colors.grey,
                thickness: .8,
              )),
          Container(
            padding: const EdgeInsets.only(left: 10),
            height: 40,
            child: ListView.builder(
              itemCount: caterories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: Border.all()),
                  child: Text(caterories[index]),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),

          /// Utilisation de TabBar
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Your Last Destination",
                      style: TextStyle(fontSize: 21),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  ///

                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const DetailScreen()));
                        },
                        child: Container(
                          height: 250,
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/1.jpg"))),
                          // child: Image.asset("assets/images/1.jpg"),
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        right: 20,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text('5.0'),
                      Text('444 Reviews'),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  ///

                  Stack(
                    children: [
                      Container(
                        height: 250,
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/1.jpg"))),
                        // child: Image.asset("assets/images/1.jpg"),
                      ),
                      const Positioned(
                        top: 20,
                        right: 20,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text('5.0'),
                      Text('444 Reviews'),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
