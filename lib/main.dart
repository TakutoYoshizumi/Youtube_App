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
            //AppBarの右側に表示するものを設定することができるプロパティ
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
            //AppBarの左側に表示するものを設定することができるプロパティです。
            leading: Icon(Icons.videocam),
          ),
          body:
              //「Container」クラスは内包する子ウィジェットをカスタマイズするために利用するウィジェット
              Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: SizedBox(
                          width: 60,
                          height: 60,
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDmVj_dg_LQ8geYXdUKaB1YOZ1dFq4qbDz3ij0PlsGD9X5SjGwvllrLjfpRKSRNDIorBQ&usqp=CAU"),
                        ),
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
                                Container(
                                    margin: EdgeInsets.only(left: 8),
                                    child: Icon(Icons.video_call))
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
                        leading: Container(
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Image.network(
                              "https://asset.watch.impress.co.jp/img/pcw/docs/1078/086/1_s.gif"),
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        trailing: Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.more_vert),
                            ],
                          ),
                        ));
                  },
                ))
              ],
            ),
          )),
    );
  }
}
