// ch04_01_understanding_database
// 데이터 저장소, DataBase 이해하기

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/inputform.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

bool isDarkMode = false;

class _UserListPageState extends State<UserListPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  final users = <InputForm>[];
  late Box _darkMode;

  @override
  void initState() {
    super.initState();
    _darkMode = Hive.box('darkModeBox');
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CupertinoSwitch(
            value: isDarkMode,
            onChanged: (val) {
              setState(() {
                isDarkMode = val;
                _darkMode.put('darkMode', val);
              });
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              label: Text('name'),
            ),
          ),
          TextField(
            controller: ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text('age'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                users.add(
                  InputForm(
                    name: nameController.text,
                    age: int.parse(ageController.text),
                  ),
                );
              });
            },
            child: Text('add'),
          ),
          Divider(),
          Expanded(
            child: users.isEmpty
                ? const Text('empty')
                : ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, i) {
                      return ListTile(
                        title: Text(users[i].name),
                        subtitle: Text(users[i].age.toString()),
                      );
                    }),
            // children: [
            //   ListTile(
            //     title: Text(users[0].name),
            //     subtitle: Text(users[0].age.toString()),
            //   ),
            // ],),
          ),
        ],
      ),
    );
  }
}
