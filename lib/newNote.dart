import 'package:flutter/material.dart';

class NewNote extends StatefulWidget {
  const NewNote({super.key});

  @override
  State<NewNote> createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        title: const Text(
          "Add new Note",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.save,
                size: 28,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            TextField(
              onSubmitted: (value) {},
              decoration: InputDecoration(
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  hintText: "Add a new title...",
                  fillColor: Colors.grey[300],
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  )),
            ),
            const SizedBox(height: 20),
            const Text("Description",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            const SizedBox(height: 10),
            TextField(
              onSubmitted: (value) {},
              maxLines: 10,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Add description",
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            )
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
          padding: const EdgeInsets.all(20),
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey[200],
              child: const Icon(Icons.edit, color: Colors.grey, size: 30))),
    );
  }
}
