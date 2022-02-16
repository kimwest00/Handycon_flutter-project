import 'package:flutter/material.dart';
import 'page1/HomePage.dart';
import 'page1/welcome_screen.dart';
import 'page1/registration_screen.dart';
import '../color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Chari-o',
      //theme: ThemeData(primarySwatch:),
      //home: HomePage(),
      initialRoute: WelcomeScreen.id,
      // routes to run an app
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomePage.id: (context) => HomePage(),
        },

    );

  }
}
class MyClipper extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {    // 하위 요소의 사이즈를 가져오는 메소드
    return Rect.fromCircle(center: new Offset(size.width / 2, size.width / 2),
        radius: size.width / 2 + 3);    // 하위 요소의 사이즈에 상관없이 넓이와 높이 사이즈를 200px, 100px로 놓았다.
  }
  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
  return false;
  }


}



