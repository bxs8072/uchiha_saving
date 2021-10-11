import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:uchiha_saving/api/auth.dart';
import 'package:uchiha_saving/models/person.dart';

class ProfilePageAppBar extends StatelessWidget {
  final Person person;
  const ProfilePageAppBar({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () {
          Auth().signOut();
        },
        icon: Icon(Icons.logout),
      ),
      actions: [
        IconButton(
          onPressed: () {
            ThemeProvider.controllerOf(context).nextTheme();
          },
          icon: Icon(CupertinoIcons.moon_stars),
        )
      ],
      foregroundColor:
          ThemeProvider.controllerOf(context).currentThemeId == "dark"
              ? Colors.white
              : Colors.black,
      backgroundColor: Colors.transparent,
    );
  }
}
