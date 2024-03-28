import 'package:flutter/material.dart';
import 'package:note/newNote.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<String> notes = ["aho", "ahe", "ahu"];
  List<bool> isFav = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.book),
        title: const Text("All notes"),
        centerTitle: true,
        elevation: 3,
      ),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )),
            const SizedBox(height: 40),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  isFav.add(false);
                  return noteItems(index);
                }),
          ],
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(50),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NewNote();
            }));
          },
          backgroundColor: Colors.grey[200],
          child: const Icon(Icons.add, color: Colors.grey, size: 30),
        ),
      ),
    );
  }

  Widget noteItems(int index) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 50,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            TextButton(
              onPressed: () {},
              child: const Text("note title",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    isFav[index] = !isFav[index];
                  });
                },
                icon: Icon(
                  isFav[index] ? Icons.favorite : Icons.favorite_border,
                  color: Colors.redAccent,
                ))
          ]),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
