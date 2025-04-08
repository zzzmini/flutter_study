import 'package:flutter/material.dart';
import 'package:flutter_study/layout/myAppBar.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Character Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body:
        Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 이미지 넣기
              Center(
                child: Image.asset(
                  'images/character_card/ch1.png',
                  width: 220,
                  height: 150,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30,
              ),
              Text('Name',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1
                ),
              ),
              SizedBox(height: 10,),
              Text('MARIO',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Text('POWER LEVEL',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1
                ),
              ),
              SizedBox(height: 10,),
              Text('14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10,),
                  Text('using running',
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10,),
                  Text('ultra hero character',
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10,),
                  Text('fire ball',
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/character_card/ch2.png'),
                  radius: 40,
                  backgroundColor: Colors.white,
                ),
              )
            ],
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
