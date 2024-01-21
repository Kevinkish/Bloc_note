import 'package:bloc_note/widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int currrentpage = 0;

class _HomePageState extends State<HomePage> {
  List<Elements> elements = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CONTAINER
      body: Stack(
        children: [
          Container(
            height: 1000000,
            width: 1000000,
            color: const Color.fromARGB(200, 220, 223, 234),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 45, left: 15, right: 15, bottom: 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text.rich(TextSpan(
                        text: "Bonjour , ",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 61, 60, 60)),
                        children: [
                          TextSpan(
                              text: "KISH",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue))
                        ])),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "I believe in myself👌💙",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(255, 87, 87, 87)),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 4,
                          color: Colors.amber,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Mes notes📝",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 200,
                        ),
                        IconButton(
                          onPressed: () {
                            Elements elmt = Elements(textoadd, textoadd);
                            setState(() {
                              if (textoadd != "") {
                                elements.add(elmt);
                              }
                            });
                            textoadd = "";

                            // setState(() {
                            //   textoadd;
                            // });
                          },
                          icon: const Icon(Icons.refresh_rounded),
                          iconSize: 30,
                          color: Colors.black54,
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: 613,
                        width: 1000000,
                        // color: const Color.fromARGB(200, 220, 223, 234),
                        // color: Colors.red,
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.all(0),
                        child:

                            //LIST VIEW BUILD

                            ListView.builder(
                          itemCount: elements.length,
                          itemBuilder: (context, i) {
                            final element = elements[i];
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Entry(
                                  elmt: element,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    // color: const Color.fromARGB(255, 247, 245, 245),
                                    color: const Color.fromARGB(
                                        255, 247, 189, 185),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(1, 3),
                                        blurRadius: 5,
                                      )
                                    ],
                                  ),
                                  height: 80,
                                  width: 75,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          elements.removeAt(i);
                                        });
                                      },
                                      icon: const Icon(Icons.delete_rounded,
                                          size: 35, color: Colors.red)),
                                ),
                              ],
                            );
                          },
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
