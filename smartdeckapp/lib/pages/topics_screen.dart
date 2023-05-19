import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartdeckapp/pages/dashboard_screen.dart';

class MyTopics extends StatefulWidget {
  const MyTopics({Key? key}) : super(key: key);

  @override
  State<MyTopics> createState() => _MyTopicsState();
}

class _MyTopicsState extends State<MyTopics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: CustomScrollView(
        slivers: [
        SliverAppBar(
        expandedHeight: 200,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
        title: Text('Topics'),
    ),
    ),
    SliverList(
    delegate: SliverChildListDelegate(
    [
    SizedBox(height: 20),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(width: 30),
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo, width: 1.4),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Find Topics',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(25)),
                  height: 32,
                  width: 75,
                  child: Center(
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
