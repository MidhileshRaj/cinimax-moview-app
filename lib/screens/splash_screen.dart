import 'package:cimax_films_app/controller/splash_screen_controller.dart';
import 'package:cimax_films_app/core/constants/data_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashScreenController>(context,listen: false).changePage(context);
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<SplashScreenController>(
                builder: (BuildContext context, SplashScreenController value,
                    Widget? child) {
                  return FutureBuilder(
                    future: value.loadImage(),
                    builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // The future is completed, so show the image
                        return SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset(clapBoardLogo));
                      } else {
                        // The future is not yet completed, show an empty widget or a loading indicator
                        return const SizedBox(
                          height: 60,
                          width: 60,
                        ); // You can replace this with a loading indicator if you prefer
                      }
                    },
                  );
                },
              ),
              const Gap(15),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'CIMA',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'X',
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
