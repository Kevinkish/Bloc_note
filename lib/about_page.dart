import 'dart:io';
import 'package:bloc_note/informationpage.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //CONTAINER
        body: Container(
      height: 1000,
      width: 1000,
      color: const Color.fromARGB(200, 220, 223, 234),
      child: Padding(
        padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
        child: Column(children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: const DecorationImage(
                    image: AssetImage("images/PXL_20230314_082613061.PORTRAIT~2.jpg"),
                    fit: BoxFit.cover),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(2, 3),
                  )
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Kevin KISH",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 5,
          ),
          const Text("I believe in myself👌💙",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.info_outline_rounded,
                size: 30,
                color: Colors.blueAccent,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InfoPage(),
                        ));
                  },
                  child: const Text(
                    "A propos de l'appli",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                width: 130,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const InfoPage(),
                        ));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Colors.grey,
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.exit_to_app_rounded,
                size: 30,
                color: Colors.red,
              ),
              TextButton(
                  onPressed: () {
                    exit(0);
                  },
                  child: const Text(
                    "Quitter",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                width: 220,
              ),
              IconButton(
                  onPressed: () {
                    exit(0);
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Colors.grey,
                  ))
            ],
          ),
        ]),
      ),
    ));
  }
}
