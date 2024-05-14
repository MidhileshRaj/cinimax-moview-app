import 'package:cimax_films_app/core/app_export.dart';
import 'package:cimax_films_app/core/constants/data_constant.dart';
import 'package:cimax_films_app/screens/signup_page.dart';
import 'package:cimax_films_app/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LauchingPage extends StatelessWidget {
  const LauchingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bannerImage),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width * .9,
                    child: const Text(
                      "To the World Where Entertainment Thrives!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(20),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.sizeOf(context).width * .9,
                    child: const Text(
                      "Lights, camera, action! Dive into a world of cinematic wonders and binge-worthy series with our incredible tracking app. Get set for an unforgettable experience",
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Gap(MediaQuery.sizeOf(context).width * .35),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom:  MediaQuery.sizeOf(context).height*.1),
              child: CustomSubmitButton(
                tag: 'Get Started',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                }, height: 50.h, width: 180.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
