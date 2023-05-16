import 'package:flutter/material.dart';
import 'package:study_mate/ui/sign_in/sign_in_page.dart';
import 'package:study_mate/ui/sign_up/sign_up_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/study_mate_logo.png',
            width: 250,
          ),
          SizedBox(height: 50),
          RouteTextButton(
            text: '로그인',
            context: context,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
            }
          ),
          SizedBox(height: 30),
          RouteTextButton(
            text: '회원가입',
            context: context,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
            }
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }

  Widget RouteTextButton({required String text, required BuildContext context, void Function()? onPressed}) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSecondary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
    );
  }
}