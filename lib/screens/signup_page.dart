import 'package:cimax_films_app/core/app_export.dart';
import 'package:cimax_films_app/core/constants/data_constant.dart';
import 'package:cimax_films_app/screens/login_screen.dart';
import 'package:cimax_films_app/view_models/signup_view_models.dart';
import 'package:cimax_films_app/widgets/custom_formfiled.dart';
import 'package:cimax_films_app/widgets/custom_submit_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bannerImage))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Gap(MediaQuery
                  .sizeOf(context)
                  .height * .26),
              Consumer<SignUpViewModel>(
                builder:
                    (BuildContext context, SignUpViewModel value,
                    Widget? child) {
                  return Center(
                    child: Form(
                      key: value.signupFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Gap(MediaQuery
                                  .sizeOf(context)
                                  .width * .12),
                              const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const Gap(10),
                          CustomFormField(
                            inputType: TextInputType.name,
                            hintLabel: "Username",
                            regExp:
                            RegExp(
                                r"^(?=.{3,30}$)[A-Za-z]+(?:[-'\s][A-Za-z]+)*"),
                            controller: value.userNameController,
                            secure: false,
                          ),
                          CustomFormField(
                            inputType: TextInputType.emailAddress,
                            hintLabel: "Email",
                            regExp:
                            RegExp(r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3,}$'),
                            controller: value.emailController,
                            secure: false,
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
                          CustomFormField(
                            inputType: TextInputType.visiblePassword,
                            hintLabel: "ConfirmPassword",
                            controller: value.confirmPassController,
                            secure: true,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),),);
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Gap(MediaQuery
                                  .sizeOf(context)
                                  .width * .15)
                            ],
                          ),

                        ],
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery
                    .sizeOf(context)
                    .height * .1),
                child: CustomSubmitButton(
                  tag: 'Sign Up',
                  onTap: () {

                  }, height: 50.h, width: 180.v,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
