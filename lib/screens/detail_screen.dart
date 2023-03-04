import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 2,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/1.jpg"))),
                ),
                Positioned(
                  top: 60,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                const Positioned(
                  top: 60,
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
            )),
        Expanded(
            child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [const Text('Hotel Amana')],
              )
            ],
          ),
        )),
      ]),
    );
  }
}
