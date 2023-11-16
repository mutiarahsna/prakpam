import 'package:flutter/material.dart';
import 'package:lithabit/screens/home/sections/all_purchased_books.dart';
import 'package:lithabit/widgets/keep_reading_section.dart';
import 'package:lithabit/widgets/last_opened_book.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lit Habit",
          style: Theme.of(context).textTheme.headline6,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add your settings functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recently Opened",
                style: Theme.of(context).textTheme.headline5,
              ),
              LastOpenedBook(),
              SizedBox(height: 16.0),
              Text(
                "Keep Reading",
                style: Theme.of(context).textTheme.headline5,
              ),
              KeepReadingSection(),
              SizedBox(height: 16.0),
              Text(
                "All Purchased Books",
                style: Theme.of(context).textTheme.headline5,
              ),
              AllPurchasedBooks(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your floating action button functionality here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
