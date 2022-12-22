import 'package:first_group/third_section/navaigation_advance/product/rout_pages.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

mixin GlobalNavigationMixin {
  void goToLoginPage(BuildContext context) {
    context.navigateToReset(RoutPages.loginPage.name);
  }

  void goToRegisterPage(BuildContext context) {
    context.navigateToReset(RoutPages.registerPage.name);
  }

  void backToHome(BuildContext context) {
    context.navigateToReset(RoutPages.home.name);
  }
}
