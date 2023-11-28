
import 'package:flutter/material.dart';
import 'package:mobx_demo/db/notes_database.dart';
import 'package:mobx_demo/model/note.dart';
import 'package:mobx_demo/ui/add_details.dart';

class PersonSqlite extends StatefulWidget {
  const PersonSqlite({super.key});

  @override
  State<PersonSqlite> createState() => _PersonSqliteState();
}

class _PersonSqliteState extends State<PersonSqlite> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   FutureBuilder<List<Person>?>(
        future: PersonDatabaseProvider.db.getAllPersons(),
        builder: (BuildContext context, AsyncSnapshot<List<Person>?> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                Person? item = snapshot.data?[index];
                return Dismissible(
                  background: Container(color: Colors.red),
                  onDismissed: (direction) {
                    PersonDatabaseProvider.db.deletePersonWithId(item.id);
                  },
                  key: Key(snapshot.data![index].id.toString() ),
                  child: ListTile(
                    title: Text(item?.name ?? ""),
                    subtitle: Text(item?.city ?? " "),
                    leading: CircleAvatar(child: Text(item!.id.toString())),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddDetails()),);

      },



      ),
    );
  }
}
