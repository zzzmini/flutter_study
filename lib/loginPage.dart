import 'package:flutter/material.dart';

import 'diceGame.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // 아이디와 비밀번호를 컨트롤하는 컨트롤러 생성
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // 아이디와 비밀번호가 틀리면 보여줄 스낵바
  SnackBar inputErrorSnackBar = SnackBar(
    content: Text('아이디나 비밀번호가 잘못되었어.. 알아서 찾어'),
    duration: Duration(seconds: 2),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search))
        ],
      ),
      body:
        SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image(
                    image: AssetImage('images/character_card/codingchef.png'),
                    width: 190,
                    height: 190,
                  ),
                ),
              ),
              SizedBox(height: 100,),
              Form(child: Theme(
                data: ThemeData(
                  primaryColor: Colors.teal,
                  inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(
                      color: Colors.teal,
                      fontSize: 15
                    )
                  )
                ),
                child: Container(
                  padding: EdgeInsets.all(40),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _userName,
                        decoration: InputDecoration(
                          labelText: 'Enter "zzzmini"'
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      TextFormField(
                        controller: _password,
                        decoration: InputDecoration(
                            labelText: 'Enter password'
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      SizedBox(height: 40,),
                      ElevatedButton(
                        onPressed: (){
                          // 아이디 비밀번호 확인
                          if(_userName.text == 'zzzmini' &&
                            _password.text == '1111'){
                            // 맞으면... 주사위 게임 호출
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context)=> DiceGame())
                            );
                          } else {
                            // 틀리면... 스낵바 보여주기
                            ScaffoldMessenger
                                .of(context)
                                .showSnackBar(inputErrorSnackBar);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent
                        ),
                        child: Icon(Icons.arrow_forward),
                      )
                    ],
                  ),
                )
                )
              )
            ],
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
