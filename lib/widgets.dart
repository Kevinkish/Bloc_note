import 'package:flutter/material.dart';

Widget conteneurdetexte = Container(
  decoration: BoxDecoration(
    // color: const Color.fromARGB(255, 247, 245, 245),
    color: const Color.fromARGB(255, 247, 189, 185),
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
      onPressed: () {},
      icon: const Icon(Icons.delete_rounded, size: 35, color: Colors.red)),
);

  
          
Widget conteneurdetexte2 =    
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 247, 245, 245),
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
                          width: 300,
                          child: TextButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //       builder: (context) => const ModificationPage(),
                              //     ));
                            },
                            child: Text(
                              " $textoadd ",
                            ),
                          ),
                        );
                    
                        
                     

String texto = "";
String textoadd = "";

//COTE DART

class Entry extends StatelessWidget {
  const Entry({super.key, required this.elmt});
  final Elements elmt;

//  const Entry (this.elmt);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(0, 220, 223, 234),
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 247, 245, 245),
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
            width: 290,
            child: Text(
              elmt.texte,textAlign: TextAlign. start,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
        
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     // color: const Color.fromARGB(255, 247, 245, 245),
          //     color: const Color.fromARGB(255, 247, 189, 185),
          //     borderRadius: BorderRadius.circular(20),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.black.withOpacity(0.1),
          //         offset: const Offset(1, 3),
          //         blurRadius: 5,
          //       )
          //     ],
          //   ),
          //   height: 80,
          //   width: 75,
          //   child: IconButton(
          //       onPressed: (){
                  
          //         delete;},
          //       icon: const Icon(Icons.delete_rounded,
          //           size: 35, color: Colors.red)),
          // ),
         
        ],
      ),
      
    );
  }

 
}

class Elements {
  String texte = "";
  String titre = "";
  Elements(this.texte, this.titre);
}
