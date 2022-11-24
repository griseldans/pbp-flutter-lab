import 'package:counter_7/main.dart';
import 'package:counter_7/page/show_data.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/budget.dart';
import 'package:counter_7/page/tambah_data.dart';
import 'package:counter_7/page/mywatchlist.dart';
import 'package:flutter/material.dart';

class WatchList extends StatefulWidget {
  const WatchList({super.key});

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Watch List'),
        ),
        drawer: buildDrawer(context),
        body: Column(
          
        )
    );
  }
}
