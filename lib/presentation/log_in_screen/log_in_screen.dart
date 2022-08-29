import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/core/app_export.dart';
import 'package:social_media_app/core/utils/validation_functions.dart';
import 'package:social_media_app/widgets/custom_button.dart';
import 'package:social_media_app/widgets/custom_icon_button.dart';
import 'package:social_media_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA200,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              CustomIconButton(
                                  height: 44,
                                  width: 44,
                                  margin:
                                      getMargin(left: 16, top: 3, right: 16),
                                  shape: IconButtonShape.RoundedBorder15,
                                  padding: IconButtonPadding.PaddingAll14,
                                  onTap: () {
                                    onTapBtntf();
                                  },
                                  child: CommonImageView(
                                      svgPath:
                                          ImageConstant.imgArrowleftWhiteA700)),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 77, right: 16),
                                  child: Text("msg_welcome_to_soci".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold32WhiteA700
                                          .copyWith())),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 16, right: 16),
                                  child: Text("msg_login_your_acco".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16WhiteA700
                                          .copyWith())),
                              CustomTextFormField(
                                  width: 382,
                                  focusNode: FocusNode(),
                                  controller: controller.frameThirtyController1,
                                  hintText: "lbl_email_id".tr,
                                  margin:
                                      getMargin(left: 16, top: 39, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  width: 382,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.frameThirtyOneController,
                                  hintText: "lbl_password".tr,
                                  margin:
                                      getMargin(left: 16, top: 24, right: 16),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 15,
                                          right: 17,
                                          bottom: 16),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgEye)),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(20.00),
                                      minHeight: getVerticalSize(18.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 15, top: 25, right: 15),
                                      child: Text("msg_forgot_password".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtInterRegular16WhiteA700
                                              .copyWith()))),
                              CustomButton(
                                  width: 382,
                                  text: "lbl_log_in".tr,
                                  margin: getMargin(
                                      left: 15, top: 39, right: 15, bottom: 20),
                                  variant: ButtonVariant.FillWhiteA700,
                                  shape: ButtonShape.CircleBorder25,
                                  padding: ButtonPadding.PaddingAll16,
                                  fontStyle: ButtonFontStyle.InterMedium18,
                                  onTap: onTapBtnLogin,
                                  alignment: Alignment.center)
                            ])))))));
  }

  onTapBtntf() {
    Get.back();
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.storiesAndTweetsScreen);
  }
}
