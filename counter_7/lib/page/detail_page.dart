import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/dataBudget.dart';
import 'package:counter_7/page/tambahBudget.dart';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/mywatchlist_page.dart';

class DetailPage extends StatelessWidget {
  final MyWatchList mywatchlist;
  const DetailPage({Key? key, required this.mywatchlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const AddPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DataPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('My Watch List'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(top:15,left: 8, right: 8),
            child: Column(
            children: <Widget>[
              Text(mywatchlist.fields.title,
                  style: const TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  )
              ),
              Padding(
                  padding: const EdgeInsets.only(top:15),
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Release Date: ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(DateFormat.yMMMd('en_US').format(mywatchlist.fields.releaseDate),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Rating: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    if (mywatchlist.fields.rating.toString().substring(1) == ".0")
                      Text("5/5",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    else
                      Text(mywatchlist.fields.rating.toString() + "/5",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Status: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    if (mywatchlist.fields.watched)
                      Text("watched",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
                    else
                      Text("not yet watched",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Review: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:3),
                child: Text(mywatchlist.fields.review,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          )
          //crossAxisAlignment: CrossAxisAlignment.center,
          
        ),
      bottomNavigationBar: Padding (
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: TextButton(
          child: const Text(
            "Back",
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}