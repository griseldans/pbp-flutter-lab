import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambah_data.dart';
import 'package:counter_7/show_data.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        ListTile(
          title: const Text('Counter'),
          onTap: () {
            // Route ke main
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),
        ListTile(
          title: const Text('Form Budget'),
          onTap: () {
            // Route ke form
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DataFormPage()),
            );
          },
        ),
        ListTile(
          title: const Text('Data Budget'),
          onTap: () {
            // Route ke budget
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ShowDataPage()),
            );
          },
        ),
      ],
    ),
  );
}