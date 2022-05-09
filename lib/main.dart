import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Project',
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),

        ],
      ),
      body: SingleChildScrollView( // 키보드가 화면을 가릴 때 해당 범위 만큼 스크롤 가능하게
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 40)),
            Center(
              child: Image(image: AssetImage('images/suh_blank.png'),
                width: 100,
                height: 100,
              ),
            ),
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
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Enter Dice"
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: "Enter Password"
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true, // 입력 텍스트 invisable
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      ButtonTheme( // 버튼을 설정할 때 용이
                        minWidth: 100,
                        height: 50,
                        child: OutlinedButton(
                          style: TextButton.styleFrom(
                            primary: Colors.blueGrey[700],

                          ),
                          onPressed: (){},
                          child: Icon(
                            Icons.arrow_forward,
                            size: 35,
                          ),
                        )
                      ),
                    ],
                  ),
                ))
            )
          ],
        ),
      ),
    );
  }
}

