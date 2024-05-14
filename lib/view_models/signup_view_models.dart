import 'package:flutter/material.dart';

class SignUpViewModel extends ChangeNotifier {
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> loginFormKey = GlobalKey();
  GlobalKey<FormState> forgotPasswordKey = GlobalKey();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  bool _isForgotPassword = false;

  bool get isForgotPassword => _isForgotPassword;

  void toggleForgotPassword() {
    _isForgotPassword = !_isForgotPassword;
    notifyListeners();
  }


  @override
  void dispose() {
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  bool _isPasswordVisible = true;

  bool get isPasswordVisible => _isPasswordVisible;

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  bool _secure = true;

  bool get secure => _secure;

  bool validateForm() {
    return signupFormKey.currentState!.validate();
  }

  changeSecure(){
    _secure = !_secure;
    notifyListeners();
  }

// Add any other business logic here
}
