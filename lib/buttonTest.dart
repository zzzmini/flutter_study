import 'package:flutter/material.dart';
import 'package:flutter_study/layout/myAppBar.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(pageTitle: 'Button Test'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
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
                print('눌림');
              },
              child: const Text('Elevated Button')
            ),
            SizedBox(height: 10,),
            FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
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
                  print('눌림');
                },
                child: const Text('Filled Button')
            ),
            SizedBox(height: 10,),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.deepPurple,
                backgroundColor: Color.fromARGB(255, 241, 230, 244)
              ),
                onPressed: ()=>{},
                child: Text('TextButton')
            ),
            SizedBox(height: 10,),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.home_rounded,
                  size: 40,
                  color: Colors.blue,
                  )
            )
          ],
        ),
      ),
        // FloatingActionButton은 Scafforl 맨 끝에..
      floatingActionButton:
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              heroTag: 'btn1',
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(50))
              ),
              onPressed: (){},
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
            SizedBox(height: 10,),
            FloatingActionButton.extended(
              heroTag: 'btn2',
              label: Text('Return',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(30)
                  )
              ),
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 20,
              ),
            ),
          ],
        ),
    );

  }
}
