import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text('動画'),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://img.icons8.com/color/2x/youtube-play.png",
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "YouTube",
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'ホーム',
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.grey),
              ),
              leading: Icon(Icons.home_outlined),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                '検索',
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.grey),
              ),
              leading: Icon(Icons.search),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text(
                'ショート',
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.grey),
              ),
              leading: Icon(Icons.browser_not_supported),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
