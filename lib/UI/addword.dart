import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

class AddWords extends StatefulWidget {
  const AddWords({Key? key}) : super(key: key);

  @override
  _AddWordsState createState() => _AddWordsState();
}

class _AddWordsState extends State<AddWords> {
  TextEditingController wordscontroller = TextEditingController();
  TextEditingController meaningcontroller = TextEditingController();
  TextEditingController examplecontroller = TextEditingController();

  CollectionReference words = FirebaseFirestore.instance.collection("words");
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size / 100;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(15, 5, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 5,
            ),
            Text(
              "Add Words",
              style: GoogleFonts.openSans(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: size.height * 8,
            ),
            TextFormField(
              controller: wordscontroller,
              decoration: InputDecoration(
                  // icon: const Icon(Icons.menu_book_sharp),\
                  isDense: true,
                  hintText: 'What the word is?',
                  labelText: 'Word',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  )),
            ),
            SizedBox(
              height: size.height * 3.8,
            ),
            TextFormField(
              controller: meaningcontroller,

              decoration: InputDecoration(
                  isDense: true,
                  // icon: const Icon(Icons.menu_book_sharp),
                  hintText: 'Add a short meaning',
                  labelText: 'Meaning',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
            ),
            SizedBox(
              height: size.height * 3.8,
            ),
            TextFormField(
              controller: examplecontroller,
              maxLines: 3,
              decoration: InputDecoration(
                  isDense: true,
                  // icon: const Icon(Icons.menu_book_sharp),
                  hintText: 'Example',
                  labelText: 'Example',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  )),
            ),
            SizedBox(
              height: size.height * 5,
            ),
            SizedBox(
              width: 200,
              child: TextButton(
                // elevation : 0,
                onPressed: ()async{
                  await words.doc(wordscontroller.text).set(
                    {'meaning':meaningcontroller.text,
                  'example':examplecontroller.text});
                },
                child: const Text(
                  "ADD",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
