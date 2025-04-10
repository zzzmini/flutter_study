import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({super.key});

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  // 좌/우 주사위 값을 저장하는 변수
  int leftDice = 1;
  int rightDice = 1;

  void showToast(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.white,
      textColor: Colors.black,
      fontSize: 20,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Dice Game',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body:
        Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage('images/dice/dice$leftDice.png'),
                      width: 300,),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Image(
                        image: AssetImage('images/dice/dice$rightDice.png'),
                        width: 300,),
                    )
                  ],
                ),
                SizedBox(height: 60,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
                        shape:
                        // RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.zero
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)
                            )
                        ),
                        fixedSize: Size(200, 30),
                        elevation: 0  // 그림자
                    ),
                    onPressed: (){
                      // 두 개 난수 발생
                      setState(() {
                        leftDice = Random().nextInt(6) + 1;
                        rightDice = Random().nextInt(6) + 1;
                      });
                      // 토스트 메시지 보여주기
                      showToast(
                       'Left Dice : ${leftDice}, Right Dice : ${rightDice}'
                      );
                    },
                    child: const Text('주사위 던지기')
                ),
              ],
            ),
          ),
        ),
      floatingActionButton:
      FloatingActionButton(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(50))
        ),
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
