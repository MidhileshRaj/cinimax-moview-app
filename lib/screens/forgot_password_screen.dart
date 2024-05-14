import 'package:cimax_films_app/core/app_export.dart';
import 'package:cimax_films_app/core/constants/data_constant.dart';
import 'package:cimax_films_app/view_models/signup_view_models.dart';
import 'package:cimax_films_app/widgets/custom_formfiled.dart';
import 'package:cimax_films_app/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
              const Gap(10),
              const SizedBox(
                height: 70,
              ),
              Gap(MediaQuery.sizeOf(context).height * .26),
              Consumer<SignUpViewModel>(
                builder: (BuildContext context, SignUpViewModel value,
                    Widget? child) {
                  return Center(
                    child: Form(
                      key: value.forgotPasswordKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Gap(MediaQuery.sizeOf(context).width * .12),
                              const Text(
                                "Forgot password?",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const Gap(10),
                          Container(
                            padding: const EdgeInsets.only(bottom: 1),
                            width: MediaQuery.of(context).size.width * .75,
                          ),
                          CustomFormField(
                            inputType: TextInputType.emailAddress,
                            hintLabel: "Email",
                            regExp: RegExp(
                                r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{3,}$'),
                            controller: value.emailController,
                            secure: false,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context
                                  );
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
                    top: MediaQuery.sizeOf(context).height * .26),
                child: CustomSubmitButton(
                  tag: 'Change',
                  onTap: () {}, height: 50.h, width: 180.v,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
