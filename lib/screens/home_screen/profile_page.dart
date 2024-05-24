import 'package:cimax_films_app/core/app_export.dart';
import 'package:cimax_films_app/screens/home_screen/widgets/watched_videos_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * .258,
            child: Stack(
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
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.sizeOf(context).height * .13,
                  left: MediaQuery.sizeOf(context).width * .35,
                  child: CircleAvatar(
                    radius: MediaQuery.sizeOf(context).width * .15,
                    child: const Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),
          const Text("Name"),
          Gap(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Gap(15.v),
              Text(
                "Watched",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.h),
              ),
            ],
          ),

          /// Watched Videos content
          const WatchedVideos(),
        ],
      ),
    );
  }
}
