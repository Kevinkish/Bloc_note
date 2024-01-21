import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 1000,
            width: 1000,
            color: const Color.fromARGB(200, 220, 223, 234),
            child:  Padding(
                padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        
                    IconButton(
                        onPressed: () {Navigator.pop(context);},
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 25,
                        )),
                        const Text("A propors de l'appli",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)
                      ],
                    ),
                        const SizedBox(height: 10,),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida. Tortor dignissim convallis aenean et tortor. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Nullam ac tortor vitae purus faucibus ornare. Amet nisl purus in mollis. Faucibus pulvinar elementum integer enim. Tempus imperdiet nulla malesuada pellentesque elit eget gravida cum. Sem nulla pharetra diam sit. Augue neque gravida in fermentum et sollicitudin ac orci phasellus. Eros in cursus turpis massa tincidunt dui ut ornare lectus. Magnis dis parturient montes nascetur ridiculus mus. Enim nec dui nunc mattis enim ut tellus elementum. Eu sem integer vitae justo. Vitae suscipit tellus mauris",style: TextStyle(fontSize: 15),textAlign: TextAlign.justify,),
                  ],
                ))));
  }
}
