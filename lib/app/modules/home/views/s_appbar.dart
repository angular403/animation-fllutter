import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class S_Appbar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: false,
          pinned: true,
          title: Text("Resto bodat"),
          // leading: Icon(Icons.android),
          flexibleSpace: FlutterLogo(size: 200),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          children: List.generate(
            9,
            (index) => Container(
              color: Color.fromARGB(
                255,
                Random().nextInt(256),
                Random().nextInt(256),
                Random().nextInt(256),
              ),
            ),
          ),
        ),

        SliverPersistentHeader(
          pinned: true,
          delegate: MyDelegateClass(
              id: "501",
              title: "Daftar Makanan",
              maxExtent: 150,
              minExtent: 100),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              height: 50,
              child: Center(
                child: Text("Menu ${index + 1}"),
              ),
            ),
            childCount: 10,
          ),
        ),
        // Sliver Kedua
        SliverPersistentHeader(
          pinned: true,
          delegate: MyDelegateClass(
              id: "500",
              title: "Daftar Minuman",
              maxExtent: 100,
              minExtent: 70),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              height: 50,
              child: Center(
                child: Text("Menu ${index + 1}"),
              ),
            ),
            childCount: 10,
          ),
        ),
      ],
    ));
  }
}

class MyDelegateClass extends SliverPersistentHeaderDelegate {
  MyDelegateClass({
    required this.id,
    required this.title,
    required this.maxExtent,
    required this.minExtent,
  });

  double maxExtent;
  double minExtent;
  String title;
  String id;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // Ini merupakan widget yang di build
    return Stack(
      children: [
        Container(
          width: Get.width,
          child: Image.network(
            "https://picsum.photos/id/$id/500/500",
            fit: BoxFit.cover,
          ),
        ),
        Center(
            child: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
