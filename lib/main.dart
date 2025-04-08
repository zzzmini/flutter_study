import 'package:flutter/material.dart';
import 'package:flutter_study/buttonTest.dart';
import 'chracterCard.dart';
import 'layout/myAppBar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.amberAccent),
      title: 'Flutter Study',
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: MyAppBar(pageTitle: 'Flutter JJang!!',),
      body: 
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TextMenu(
                titleText: '1. Button Test Page',
                openWidget: ButtonTest(),
              ),
              _TextMenu(
                titleText: '2. Character Card Page',
                openWidget: CharacterCard(),
              ),
            ],
          ),
        ),
    );
  }
}

class _TextMenu extends StatelessWidget {
  const _TextMenu({super.key, this.titleText, this.openWidget});

  final titleText;
  final openWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context)=> openWidget));
          print('버튼 눌림');
        },
        child: Text(titleText,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        )
    );
  }
}
