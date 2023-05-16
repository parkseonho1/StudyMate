import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {

  final String title;

  AccountAppBar({Key? key, required this.title}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      title: Text(
        title,
        style: TextStyle(
            color: Theme.of(context).colorScheme.onSecondary,
            fontSize: 15,
            fontWeight: FontWeight.bold
        ),
      ),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_arrow_left)
      ),
      iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.onSecondary
      ),
    );
  }
}
