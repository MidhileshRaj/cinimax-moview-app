import 'package:cimax_films_app/core/app_export.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -MediaQuery.sizeOf(context).width * .80,
          left: -MediaQuery.sizeOf(context).width * .100,
          child: CircleAvatar(
            radius: MediaQuery.sizeOf(context).width * .6,
            backgroundColor: Colors.amberAccent,
          ),
        ),
        Positioned(
            top: 20.v,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 32,
                    ))
              ],
            ),)

      ],
    );
  }
}
