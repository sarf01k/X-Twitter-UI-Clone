import 'package:flutter/material.dart';
import 'package:twitter/drawer_widget.dart';
import 'package:twitter/notifications.all.dart';
import 'package:twitter/pfp.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SafeArea(
        child: DrawerWidget()
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  floating: true,
                  // snap: true,
                  // pinned: true,
                  title: const Text('Notifications'),
                  leading: const ProfilePic(),
                  actions: [
                    Image.asset('assets/icons/settings.png')
                  ],
                  // expandedHeight: 200,
                  bottom: const TabBar(
                    labelColor: Colors.black,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 15),
                    indicatorWeight: 3,
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Verified'),
                      Tab(text: 'Mentions')
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                AllNotifications(),
                ListView( // Replace with a scrollable widget (e.g., ListView)
                  children: List.generate(
                    30, // Adjust the number of items as needed
                    (index) => ListTile(title: Text('Item $index')),
                  ),
                ),
                ListView( // Replace with a scrollable widget (e.g., ListView)
                  children: List.generate(
                    30, // Adjust the number of items as needed
                    (index) => ListTile(title: Text('Item $index')),
                  ),
                )
              ],
            ),
          )
        )
      )
    );
  }
}