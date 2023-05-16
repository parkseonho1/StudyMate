import 'package:flutter/material.dart';
import 'package:study_mate/ui/common_ui/account_app_bar.dart';
import 'package:study_mate/ui/common_ui/account_text_field.dart';
import 'package:study_mate/utility/validation.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountAppBar(title: '로그인'),
      body: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text('이메일'),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: AccountTextField(
                  textEditingController: emailEditingController,
                  hintText: '이메일 입력...',
                  validator: (text) {
                    return Validation().emailValidate(text!);
                  },
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text('비밀번호'),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: AccountTextField(
                  textEditingController: passwordEditingController,
                  hintText: '비밀번호 입력...',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
