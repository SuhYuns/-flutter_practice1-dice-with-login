import 'package:flutter/material.dart';
import 'dice.dart';

class loginBody extends StatefulWidget {
  @override
  State<loginBody> createState() => _loginBodyState();
}

class _loginBodyState extends State<loginBody> {

  //form의 텍스트 컨트롤을 위함 - 텍스트 필드와 연결해야 한다.
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder:(context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView( // 키보드가 화면을 가릴 때 해당 범위 만큼 스크롤 가능하게
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
                              controller: controller,
                              autofocus: true, // focus 부여(자동)
                              decoration: InputDecoration(
                                  labelText: "Enter Dice"
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2,
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
                                  onPressed: () {
                                    // controller.text로 입력된 값 가져올 수 있음
                                    if (controller.text == 'dice' &&
                                        controller2.text == '1234') {
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  Dice())
                                      );
                                    } else if (controller.text != 'dice') {
                                      showSnackBar3(context);
                                    } else if (controller2.text != '1234') {
                                      showSnackBar2(context);
                                    } else {
                                      showSnackBar(context);
                                    }
                                  },
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
    );
  }
}


void showSnackBar(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("로그인 정보를 다시 확인하세요"),
      // 중앙 정렬
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blueGrey,
    ),
  );
}

void showSnackBar2(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("비밀번호가 일치하지 않습니다"),
      // 중앙 정렬
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blueGrey,
    ),
  );
}

void showSnackBar3(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text("Dice의 철자를 확인하세요"),
      // 중앙 정렬
      duration: Duration(seconds: 2),
      backgroundColor: Colors.blueGrey,
    ),
  );
}
