
import 'package:bloc_note/widgets.dart';
import 'package:flutter/material.dart';

class ModificationPage extends StatefulWidget {
  const ModificationPage({super.key});

  @override
  State<ModificationPage> createState() => _ModificationPageState();
}

class _ModificationPageState extends State<ModificationPage> {
  // TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1000,
        width: 1000,
        color: const Color.fromARGB(200, 220, 223, 234),
        child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25,
                    )),
                const Text(
                  "Modifier",
                  style: TextStyle(fontSize: 17),
                ),
                IconButton(
                    onPressed: () {
                      // setState(() {
                      //   texto= controller.text;
                        textoadd = textoadd  ;
                      // });
                      //  Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.book_rounded,
                      size: 25,
                    ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              // controller: controller,
              maxLines: null,

              decoration:  const InputDecoration(
                  hintText:  "Entrez le texte....",
                  hintStyle: TextStyle(fontSize: 15),
                  border: InputBorder.none
                  ),
              textAlign: TextAlign.start,
              
              textInputAction: TextInputAction.newline,
              onTapOutside: (event) {
                FocusScope.of(context).unfocus();
              },
              style: const TextStyle(fontSize: 20),
          
          onChanged: (value) {
            textoadd =value;
          },
             
            ),
            Text(textoadd,style: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic ),),
      

          ]),
        ),
      ),
    );
  }
}
