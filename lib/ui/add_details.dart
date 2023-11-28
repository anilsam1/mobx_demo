import 'package:flutter/material.dart';
import 'package:mobx_demo/db/notes_database.dart';
import 'package:mobx_demo/model/note.dart';
import 'package:mobx_demo/ui/person.dart';

class AddDetails extends StatefulWidget {
  const AddDetails({super.key});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {

  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController idController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: idController,
                decoration: const InputDecoration(
                  hintText: "id",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                ),
              ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                ),
              ),
              TextFormField(
                controller: cityController,
                decoration: const InputDecoration(
                  hintText: "city",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                PersonDatabaseProvider.db.addPersonToDatabase(Person(name: nameController.text, city: cityController.text, id: int.parse(idController.text)));
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PersonSqlite()),);

              }, child: const Text("add"))
            ],
          ),
        ),
      ),
    );
  }
}
