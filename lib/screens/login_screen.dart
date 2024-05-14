import 'package:cimax_films_app/core/app_export.dart';
import 'package:cimax_films_app/core/constants/data_constant.dart';
import 'package:cimax_films_app/screens/forgot_password_screen.dart';
import 'package:cimax_films_app/screens/home_screen/main_home.dart';
import 'package:cimax_films_app/view_models/signup_view_models.dart';
import 'package:cimax_films_app/widgets/custom_formfiled.dart';
import 'package:cimax_films_app/widgets/custom_submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Gap(MediaQuery.sizeOf(context).height * .26),
              Consumer<SignUpViewModel>(
                builder: (BuildContext context, SignUpViewModel value,
                    Widget? child) {
                  return Center(
                    child: Form(
                      key: value.loginFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Gap(MediaQuery.sizeOf(context).width * .12),
                              const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const Gap(10),
                          Hero(
                            tag: "email",
                            child: CustomFormField(
                              inputType: TextInputType.emailAddress,
                              hintLabel: "Email",
                              regExp: RegExp(
                                  r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3,}$'),
                              controller: value.emailController,
                              secure: false,
                            ),
                          ),
                          CustomFormField(
                            inputType: TextInputType.visiblePassword,
                            hintLabel: "Password",
                            sufixIcon: IconButton(
                              onPressed: () {
                                value.changeSecure();
                              },
                              icon: Icon(
                                value.secure
                                    ? CupertinoIcons.eye
                                    : CupertinoIcons.eye_slash,
                                color: Colors.black38,
                              ),
                            ),
                            regExp: RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[@#$&*~]).{8,}$'),
                            controller: value.passwordController,
                            secure: value.secure,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPasswordScreen(),
                                      ));
                                },
                                child: const Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Gap(MediaQuery.sizeOf(context).width * .15)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height * .235),
                child: CustomSubmitButton(
                  tag: 'Login',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  const MainHomeScreen(),
                        ));
                  },
                  height: 50.h,
                  width: 180.v,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
