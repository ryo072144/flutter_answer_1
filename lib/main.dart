import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercise 1',
      theme: ThemeData(

        //問１： ここでは基本色しか指定できません。
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('タイトル', style: TextStyle(fontSize: 20, color: Color(0xff222222), fontWeight: FontWeight.bold),),),

      //問２： 真黒(0xff000000)や真白(0xffffffff)は目が疲れるので、あまり使わないようにしましょう。
      //Flutterのカラーコードは8桁ですが、頭の2桁は透過率を表します。
      backgroundColor: Color(0xffeeeeee),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Row(

              //問７： mainAxisAlignmentでColumnやRowと平行に位置を調節できます。
              //crossAxisAlignmentはColumnやRowと直角に位置を調整できます。
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                SizedBox(width: 10,),

                //問４: アイコンの一覧はこちらで確認できます(https://api.flutter.dev/flutter/material/Icons-class.html)。
                //SizedBoxはちょっとした隙間を作りたいときに便利です。
                Icon(Icons.thumb_down, color: Colors.red, size: 30,),
                SizedBox(width: 10,),
                Text('タイル１', style: TextStyle(fontSize: 18, color: Color(0xff222222),),)
              ],
            ),
          ),
          Divider(height: 20,),
          Container(

            //問５： paddingはWidgetの大きさを広げるプロパティです。
            padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                SizedBox(width: 10,),
                Text('タイル2', style: TextStyle(fontSize: 18, color: Color(0xff222222),))
              ],
            ),
          ),
          Divider(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                SizedBox(width: 10,),

                //問６： fontWeightで文字の太さを調整できます。
                Text('タイル３', style: TextStyle(fontSize: 18, color: Color(0xff222222), fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Divider(height: 20,),

          //問３： どの部分がタイルなのかが分かれば大丈夫です。
          Container(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Row(
              children: [
                Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                SizedBox(width: 10,),
                Text('タイル４', style: TextStyle(fontSize: 18, color: Color(0xff222222),))
              ],
            ),
          ),
          Divider(height: 20,),
        ],
      )
    );
  }
}
