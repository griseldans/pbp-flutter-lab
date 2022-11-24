import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/watchlist.dart';
import 'package:flutter/material.dart';

class WatchListPage extends StatelessWidget {
  final WatchList watchlist;
  const WatchListPage({super.key, required this.watchlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: buildDrawer(context),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Judul Film
              Center(
                  child: Text(
                watchlist.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
              // List Detail Fillm
              Column(
                children: [
                  const SizedBox(height: 10),
                  // Release date
                  Row(
                    children: [
                      const Text(
                        "Release Date: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(watchlist.releaseDate,
                          style: const TextStyle(fontSize: 16))
                    ],
                  ),

                  // Rating
                  Row(
                    children: [
                      const Text(
                        "Rating: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(watchlist.rating.toString(),
                          style: const TextStyle(fontSize: 16))
                    ],
                  ),

                  const SizedBox(height: 10),
                  // Status
                  Row(
                    children: [
                      const Text(
                        "Status: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                          watchlist.watched
                              ? "Sudah ditonton"
                              : "Belum ditonton",
                          style: const TextStyle(fontSize: 16))
                    ],
                  ),

                  const SizedBox(height: 10),
                  // Review
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Review:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Text(watchlist.review,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)))
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: const Size.fromHeight(40),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Back",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
