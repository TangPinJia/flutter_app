import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPairs=WordPair.random();
    return MaterialApp(
      title: 'Flutter Demo',//不知何用
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(//去掉就是没有bar，也就是沉浸式状态栏
          title: Text('Flutter App'),
        ),
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords>{
  final suggestions=<WordPair>[];
  final biggerFont=const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair=WordPair.random();
    return Text(wordPair.asPascalCase);
  }

  Widget buildSuggestions(){
    return ListView.builder(itemBuilder: (context,i){});
  }
  
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState()=>new RandomWordsState();
}
