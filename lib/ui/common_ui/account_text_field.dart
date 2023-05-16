import 'package:flutter/material.dart';

class AccountTextField extends StatelessWidget {

  final TextEditingController textEditingController;
  final String hintText;
  String? Function(String?)? validator;

  AccountTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    this.validator
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.onSecondaryContainer,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide.none
        ),
      ),
    );
  }
}
