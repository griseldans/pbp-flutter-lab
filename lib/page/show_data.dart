import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/tambah_data.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/budget.dart';

class ShowDataPage extends StatefulWidget {
  const ShowDataPage({super.key});

  @override
  State<ShowDataPage> createState() => _ShowDataPageState();
}

class _ShowDataPageState extends State<ShowDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      drawer: buildDrawer(context),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(Budget.listBudget[index].judul,
                        style: const TextStyle(fontSize: 25),
                        textAlign: TextAlign.left),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(Budget.listBudget[index].nominal.toString(),
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(Budget.listBudget[index].pilihan_jenis,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.right),
                        ),
                      ),
                    ]),
              ]),
            ),
          );
        }),
        itemCount: Budget.listBudget.length,
      ),
    );
  }
}
