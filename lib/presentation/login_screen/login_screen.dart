import 'controller/login_controller.dart';
import 'package:almohsen_music/core/app_export.dart';
import 'package:almohsen_music/core/utils/validation_functions.dart';
import 'package:almohsen_music/widgets/custom_elevated_button.dart';
import 'package:almohsen_music/widgets/custom_outlined_button.dart';
import 'package:almohsen_music/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onError,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 152.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  Text("lbl_sign_in".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 31.v),
                                  _buildEmail(),
                                  SizedBox(height: 16.v),
                                  _buildPassword(),
                                  SizedBox(height: 24.v),
                                  _buildSignInButton(),
                                  SizedBox(height: 40.v),
                                  Text("msg_forgot_your_login".tr,
                                      style: CustomTextStyles
                                          .bodyMediumOnPrimaryContainer)
                                ]))))),
            bottomNavigationBar: _buildCreateAccountButton()));
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignInButton() {
    return CustomElevatedButton(
        text: "lbl_sign_in2".tr,
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: CustomTextStyles.bodyLargeBlack900);
  }

  /// Section Widget
  Widget _buildCreateAccountButton() {
    return CustomOutlinedButton(
        text: "lbl_create_account".tr,
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v));
  }
}
