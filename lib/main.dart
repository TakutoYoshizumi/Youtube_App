import 'package:flutter/material.dart';

import './video_detail_page.dart';

//アプリ開始時に呼ばれる最初のメソッド
void main() {
  runApp(YoutubeApp());
}

class YoutubeApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YotubeApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text(
              'Youtube',
            ),
            actions: [
              SizedBox(
                width: 44,
                child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ),
              SizedBox(
                width: 44,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ),
            ],
            leading: Icon(Icons.videocam),
          ),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDmVj_dg_LQ8geYXdUKaB1YOZ1dFq4qbDz3ij0PlsGD9X5SjGwvllrLjfpRKSRNDIorBQ&usqp=CAU"),
                      ),
                      SizedBox(
                          // width: 8,
                          ),
                      Column(children: [
                        Text('Hello Youtube'),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text('登録する',
                                    style: TextStyle(color: Colors.black87)),
                                Icon(Icons.video_call)
                              ],
                            )),
                      ])
                    ],
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                        onTap: () async {
                          //画面遷移
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VideoDetailPage()),
                          );
                        },
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                            "https://asset.watch.impress.co.jp/img/pcw/docs/1078/086/1_s.gif"),
                        title: Column(
                          children: [
                            Text(
                              "Hello Youtube!!!",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Row(
                              children: [
                                Text("100万再生", style: TextStyle(fontSize: 13)),
                                Text('１時間前', style: TextStyle(fontSize: 13)),
                              ],
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.more_vert));
                  },
                ))
              ],
            ),
          )),
    );
  }
}
