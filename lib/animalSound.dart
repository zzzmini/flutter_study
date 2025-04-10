import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimalSound extends StatelessWidget {
  const AnimalSound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: SizedBox(
          height: 50,
          width: 150,
          child: Lottie.asset('lottie/cat.json'),
        ),
        title: Text('Animal Sound'),
        centerTitle: true,
      ),
      body:
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/animal/bear.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Bear', style: TextStyle(
                          fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/animal/camel.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Camel', style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/animal/fox.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Fox', style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/animal/koala.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Koala', style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/animal/lion.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Lion', style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/animal/tiger.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Tiger', style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(50)
            )
        ),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
